
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
typedef int s8 ;
typedef int s64 ;
struct TYPE_22__ {int vcn; int lcn; int length; } ;
typedef TYPE_3__ runlist_element ;
struct TYPE_23__ {int major_ver; int cluster_size; int cluster_size_bits; int sb; } ;
typedef TYPE_4__ ntfs_volume ;
typedef int VCN ;
struct TYPE_21__ {int allocated_size; int lowest_vcn; int highest_vcn; int mapping_pairs_offset; } ;
struct TYPE_20__ {TYPE_2__ non_resident; } ;
struct TYPE_24__ {TYPE_1__ data; int length; int non_resident; } ;
typedef int LCN ;
typedef TYPE_5__ ATTR_RECORD ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 TYPE_3__* ERR_PTR (int ) ;
 int IS_ERR (TYPE_3__*) ;
 int LCN_ENOENT ;
 int LCN_HOLE ;
 void* LCN_RL_NOT_MAPPED ;
 int PAGE_SIZE ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int ntfs_debug (char*,...) ;
 int ntfs_debug_dump_runlist (TYPE_3__*) ;
 int ntfs_error (int ,char*,...) ;
 int ntfs_free (TYPE_3__*) ;
 TYPE_3__* ntfs_malloc_nofs (int) ;
 TYPE_3__* ntfs_runlists_merge (TYPE_3__*,TYPE_3__*) ;
 int sle64_to_cpu (int ) ;
 scalar_t__ unlikely (int) ;

runlist_element *ntfs_mapping_pairs_decompress(const ntfs_volume *vol,
  const ATTR_RECORD *attr, runlist_element *old_rl)
{
 VCN vcn;
 LCN lcn;
 s64 deltaxcn;
 runlist_element *rl;
 u8 *buf;
 u8 *attr_end;
 int rlsize;
 u16 rlpos;

 u8 b;
 vcn = sle64_to_cpu(attr->data.non_resident.lowest_vcn);
 lcn = 0;

 buf = (u8*)attr + le16_to_cpu(
   attr->data.non_resident.mapping_pairs_offset);
 attr_end = (u8*)attr + le32_to_cpu(attr->length);
 if (unlikely(buf < (u8*)attr || buf > attr_end)) {
  ntfs_error(vol->sb, "Corrupt attribute.");
  return ERR_PTR(-EIO);
 }

 if (!vcn && !*buf)
  return old_rl;

 rlpos = 0;

 rl = ntfs_malloc_nofs(rlsize = PAGE_SIZE);
 if (unlikely(!rl))
  return ERR_PTR(-ENOMEM);

 if (vcn) {
  rl->vcn = 0;
  rl->lcn = LCN_RL_NOT_MAPPED;
  rl->length = vcn;
  rlpos++;
 }
 while (buf < attr_end && *buf) {





  if (((rlpos + 3) * sizeof(*old_rl)) > rlsize) {
   runlist_element *rl2;

   rl2 = ntfs_malloc_nofs(rlsize + (int)PAGE_SIZE);
   if (unlikely(!rl2)) {
    ntfs_free(rl);
    return ERR_PTR(-ENOMEM);
   }
   memcpy(rl2, rl, rlsize);
   ntfs_free(rl);
   rl = rl2;
   rlsize += PAGE_SIZE;
  }

  rl[rlpos].vcn = vcn;







  b = *buf & 0xf;
  if (b) {
   if (unlikely(buf + b > attr_end))
    goto io_error;
   for (deltaxcn = (s8)buf[b--]; b; b--)
    deltaxcn = (deltaxcn << 8) + buf[b];
  } else {
   ntfs_error(vol->sb, "Missing length entry in mapping "
     "pairs array.");
   deltaxcn = (s64)-1;
  }




  if (unlikely(deltaxcn < 0)) {
   ntfs_error(vol->sb, "Invalid length in mapping pairs "
     "array.");
   goto err_out;
  }




  rl[rlpos].length = deltaxcn;

  vcn += deltaxcn;





  if (!(*buf & 0xf0))
   rl[rlpos].lcn = LCN_HOLE;
  else {

   u8 b2 = *buf & 0xf;
   b = b2 + ((*buf >> 4) & 0xf);
   if (buf + b > attr_end)
    goto io_error;
   for (deltaxcn = (s8)buf[b--]; b > b2; b--)
    deltaxcn = (deltaxcn << 8) + buf[b];

   lcn += deltaxcn;
   if (unlikely(lcn < (LCN)-1)) {
    ntfs_error(vol->sb, "Invalid LCN < -1 in "
      "mapping pairs array.");
    goto err_out;
   }

   rl[rlpos].lcn = lcn;
  }

  rlpos++;

  buf += (*buf & 0xf) + ((*buf >> 4) & 0xf) + 1;
 }
 if (unlikely(buf >= attr_end))
  goto io_error;




 deltaxcn = sle64_to_cpu(attr->data.non_resident.highest_vcn);
 if (unlikely(deltaxcn && vcn - 1 != deltaxcn)) {
mpa_err:
  ntfs_error(vol->sb, "Corrupt mapping pairs array in "
    "non-resident attribute.");
  goto err_out;
 }

 if (!attr->data.non_resident.lowest_vcn) {
  VCN max_cluster;

  max_cluster = ((sle64_to_cpu(
    attr->data.non_resident.allocated_size) +
    vol->cluster_size - 1) >>
    vol->cluster_size_bits) - 1;




  if (deltaxcn) {






   if (deltaxcn < max_cluster) {
    ntfs_debug("More extents to follow; deltaxcn "
      "= 0x%llx, max_cluster = "
      "0x%llx",
      (unsigned long long)deltaxcn,
      (unsigned long long)
      max_cluster);
    rl[rlpos].vcn = vcn;
    vcn += rl[rlpos].length = max_cluster -
      deltaxcn;
    rl[rlpos].lcn = LCN_RL_NOT_MAPPED;
    rlpos++;
   } else if (unlikely(deltaxcn > max_cluster)) {
    ntfs_error(vol->sb, "Corrupt attribute.  "
      "deltaxcn = 0x%llx, "
      "max_cluster = 0x%llx",
      (unsigned long long)deltaxcn,
      (unsigned long long)
      max_cluster);
    goto mpa_err;
   }
  }
  rl[rlpos].lcn = LCN_ENOENT;
 } else
  rl[rlpos].lcn = LCN_RL_NOT_MAPPED;


 rl[rlpos].vcn = vcn;
 rl[rlpos].length = (s64)0;

 if (!old_rl) {
  ntfs_debug("Mapping pairs array successfully decompressed:");
  ntfs_debug_dump_runlist(rl);
  return rl;
 }

 old_rl = ntfs_runlists_merge(old_rl, rl);
 if (likely(!IS_ERR(old_rl)))
  return old_rl;
 ntfs_free(rl);
 ntfs_error(vol->sb, "Failed to merge runlists.");
 return old_rl;
io_error:
 ntfs_error(vol->sb, "Corrupt attribute.");
err_out:
 ntfs_free(rl);
 return ERR_PTR(-EIO);
}
