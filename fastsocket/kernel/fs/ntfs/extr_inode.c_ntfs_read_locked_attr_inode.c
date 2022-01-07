
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_11__ ;
typedef struct TYPE_28__ TYPE_10__ ;


struct inode {int i_mode; int i_size; int i_blocks; int i_ino; TYPE_4__* i_mapping; int i_sb; int i_generation; int i_atime; int i_ctime; int i_mtime; int i_nlink; int i_gid; int i_uid; int i_version; } ;
struct TYPE_37__ {int cluster_size; unsigned int cluster_size_bits; int sb; } ;
typedef TYPE_8__ ntfs_volume ;
struct TYPE_36__ {TYPE_9__* base_ntfs_ino; } ;
struct TYPE_34__ {unsigned int block_size; unsigned int block_clusters; int size; scalar_t__ block_size_bits; } ;
struct TYPE_35__ {TYPE_5__ compressed; } ;
struct TYPE_38__ {scalar_t__ type; int initialized_size; int allocated_size; int nr_extents; scalar_t__ name_len; TYPE_7__ ext; TYPE_6__ itype; int name; int seq_no; } ;
typedef TYPE_9__ ntfs_inode ;
struct TYPE_28__ {TYPE_11__* attr; } ;
typedef TYPE_10__ ntfs_attr_search_ctx ;
struct TYPE_33__ {int * a_ops; } ;
struct TYPE_31__ {int compression_unit; int allocated_size; int initialized_size; int data_size; scalar_t__ lowest_vcn; int compressed_size; int mapping_pairs_offset; } ;
struct TYPE_30__ {int value_offset; int value_length; } ;
struct TYPE_32__ {TYPE_2__ non_resident; TYPE_1__ resident; } ;
struct TYPE_29__ {int flags; TYPE_3__ data; int name_offset; scalar_t__ name_length; int length; int non_resident; } ;
typedef int MFT_RECORD ;
typedef TYPE_11__ ATTR_RECORD ;


 int ATTR_COMPRESSION_MASK ;
 int ATTR_IS_COMPRESSED ;
 int ATTR_IS_ENCRYPTED ;
 int ATTR_IS_SPARSE ;
 scalar_t__ AT_DATA ;
 scalar_t__ AT_INDEX_ROOT ;
 int CASE_SENSITIVE ;
 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (int *) ;
 scalar_t__ NInoCompressed (TYPE_9__*) ;
 scalar_t__ NInoMstProtected (TYPE_9__*) ;
 int NInoSetCompressed (TYPE_9__*) ;
 int NInoSetEncrypted (TYPE_9__*) ;
 int NInoSetNonResident (TYPE_9__*) ;
 int NInoSetSparse (TYPE_9__*) ;
 scalar_t__ NInoSparse (TYPE_9__*) ;
 TYPE_9__* NTFS_I (struct inode*) ;
 TYPE_8__* NTFS_SB (int ) ;
 int NVolSetErrors (TYPE_8__*) ;
 int PTR_ERR (int *) ;
 int S_IFMT ;
 scalar_t__ ffs (unsigned int) ;
 int igrab (struct inode*) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int make_bad_inode (struct inode*) ;
 int * map_mft_record (TYPE_9__*) ;
 int ntfs_aops ;
 TYPE_10__* ntfs_attr_get_search_ctx (TYPE_9__*,int *) ;
 int ntfs_attr_lookup (scalar_t__,int ,scalar_t__,int ,int ,int *,int ,TYPE_10__*) ;
 int ntfs_attr_put_search_ctx (TYPE_10__*) ;
 int ntfs_debug (char*,...) ;
 int ntfs_error (int ,char*,...) ;
 int ntfs_init_big_inode (struct inode*) ;
 int ntfs_mst_aops ;
 void* sle64_to_cpu (int ) ;
 scalar_t__ unlikely (int) ;
 int unmap_mft_record (TYPE_9__*) ;

__attribute__((used)) static int ntfs_read_locked_attr_inode(struct inode *base_vi, struct inode *vi)
{
 ntfs_volume *vol = NTFS_SB(vi->i_sb);
 ntfs_inode *ni, *base_ni;
 MFT_RECORD *m;
 ATTR_RECORD *a;
 ntfs_attr_search_ctx *ctx;
 int err = 0;

 ntfs_debug("Entering for i_ino 0x%lx.", vi->i_ino);

 ntfs_init_big_inode(vi);

 ni = NTFS_I(vi);
 base_ni = NTFS_I(base_vi);


 vi->i_version = base_vi->i_version;
 vi->i_uid = base_vi->i_uid;
 vi->i_gid = base_vi->i_gid;
 vi->i_nlink = base_vi->i_nlink;
 vi->i_mtime = base_vi->i_mtime;
 vi->i_ctime = base_vi->i_ctime;
 vi->i_atime = base_vi->i_atime;
 vi->i_generation = ni->seq_no = base_ni->seq_no;


 vi->i_mode = base_vi->i_mode & ~S_IFMT;

 m = map_mft_record(base_ni);
 if (IS_ERR(m)) {
  err = PTR_ERR(m);
  goto err_out;
 }
 ctx = ntfs_attr_get_search_ctx(base_ni, m);
 if (!ctx) {
  err = -ENOMEM;
  goto unm_err_out;
 }

 err = ntfs_attr_lookup(ni->type, ni->name, ni->name_len,
   CASE_SENSITIVE, 0, ((void*)0), 0, ctx);
 if (unlikely(err))
  goto unm_err_out;
 a = ctx->attr;
 if (a->flags & (ATTR_COMPRESSION_MASK | ATTR_IS_SPARSE)) {
  if (a->flags & ATTR_COMPRESSION_MASK) {
   NInoSetCompressed(ni);
   if ((ni->type != AT_DATA) || (ni->type == AT_DATA &&
     ni->name_len)) {
    ntfs_error(vi->i_sb, "Found compressed "
      "non-data or named data "
      "attribute.  Please report "
      "you saw this message to "
      "linux-ntfs-dev@lists."
      "sourceforge.net");
    goto unm_err_out;
   }
   if (vol->cluster_size > 4096) {
    ntfs_error(vi->i_sb, "Found compressed "
      "attribute but compression is "
      "disabled due to cluster size "
      "(%i) > 4kiB.",
      vol->cluster_size);
    goto unm_err_out;
   }
   if ((a->flags & ATTR_COMPRESSION_MASK) !=
     ATTR_IS_COMPRESSED) {
    ntfs_error(vi->i_sb, "Found unknown "
      "compression method.");
    goto unm_err_out;
   }
  }




  if (NInoMstProtected(ni) && ni->type != AT_INDEX_ROOT) {
   ntfs_error(vi->i_sb, "Found mst protected attribute "
     "but the attribute is %s.  Please "
     "report you saw this message to "
     "linux-ntfs-dev@lists.sourceforge.net",
     NInoCompressed(ni) ? "compressed" :
     "sparse");
   goto unm_err_out;
  }
  if (a->flags & ATTR_IS_SPARSE)
   NInoSetSparse(ni);
 }
 if (a->flags & ATTR_IS_ENCRYPTED) {
  if (NInoCompressed(ni)) {
   ntfs_error(vi->i_sb, "Found encrypted and compressed "
     "data.");
   goto unm_err_out;
  }




  if (NInoMstProtected(ni) && ni->type != AT_INDEX_ROOT) {
   ntfs_error(vi->i_sb, "Found mst protected attribute "
     "but the attribute is encrypted.  "
     "Please report you saw this message "
     "to linux-ntfs-dev@lists.sourceforge."
     "net");
   goto unm_err_out;
  }
  if (ni->type != AT_DATA) {
   ntfs_error(vi->i_sb, "Found encrypted non-data "
     "attribute.");
   goto unm_err_out;
  }
  NInoSetEncrypted(ni);
 }
 if (!a->non_resident) {

  if (unlikely(a->name_length && (le16_to_cpu(a->name_offset) >=
    le16_to_cpu(a->data.resident.value_offset)))) {
   ntfs_error(vol->sb, "Attribute name is placed after "
     "the attribute value.");
   goto unm_err_out;
  }
  if (NInoMstProtected(ni)) {
   ntfs_error(vi->i_sb, "Found mst protected attribute "
     "but the attribute is resident.  "
     "Please report you saw this message to "
     "linux-ntfs-dev@lists.sourceforge.net");
   goto unm_err_out;
  }
  vi->i_size = ni->initialized_size = le32_to_cpu(
    a->data.resident.value_length);
  ni->allocated_size = le32_to_cpu(a->length) -
    le16_to_cpu(a->data.resident.value_offset);
  if (vi->i_size > ni->allocated_size) {
   ntfs_error(vi->i_sb, "Resident attribute is corrupt "
     "(size exceeds allocation).");
   goto unm_err_out;
  }
 } else {
  NInoSetNonResident(ni);




  if (unlikely(a->name_length && (le16_to_cpu(a->name_offset) >=
    le16_to_cpu(
    a->data.non_resident.mapping_pairs_offset)))) {
   ntfs_error(vol->sb, "Attribute name is placed after "
     "the mapping pairs array.");
   goto unm_err_out;
  }
  if (NInoCompressed(ni) || NInoSparse(ni)) {
   if (NInoCompressed(ni) && a->data.non_resident.
     compression_unit != 4) {
    ntfs_error(vi->i_sb, "Found non-standard "
      "compression unit (%u instead "
      "of 4).  Cannot handle this.",
      a->data.non_resident.
      compression_unit);
    err = -EOPNOTSUPP;
    goto unm_err_out;
   }
   if (a->data.non_resident.compression_unit) {
    ni->itype.compressed.block_size = 1U <<
      (a->data.non_resident.
      compression_unit +
      vol->cluster_size_bits);
    ni->itype.compressed.block_size_bits =
      ffs(ni->itype.compressed.
      block_size) - 1;
    ni->itype.compressed.block_clusters = 1U <<
      a->data.non_resident.
      compression_unit;
   } else {
    ni->itype.compressed.block_size = 0;
    ni->itype.compressed.block_size_bits = 0;
    ni->itype.compressed.block_clusters = 0;
   }
   ni->itype.compressed.size = sle64_to_cpu(
     a->data.non_resident.compressed_size);
  }
  if (a->data.non_resident.lowest_vcn) {
   ntfs_error(vi->i_sb, "First extent of attribute has "
     "non-zero lowest_vcn.");
   goto unm_err_out;
  }
  vi->i_size = sle64_to_cpu(a->data.non_resident.data_size);
  ni->initialized_size = sle64_to_cpu(
    a->data.non_resident.initialized_size);
  ni->allocated_size = sle64_to_cpu(
    a->data.non_resident.allocated_size);
 }
 if (NInoMstProtected(ni))
  vi->i_mapping->a_ops = &ntfs_mst_aops;
 else
  vi->i_mapping->a_ops = &ntfs_aops;
 if ((NInoCompressed(ni) || NInoSparse(ni)) && ni->type != AT_INDEX_ROOT)
  vi->i_blocks = ni->itype.compressed.size >> 9;
 else
  vi->i_blocks = ni->allocated_size >> 9;




 igrab(base_vi);
 ni->ext.base_ntfs_ino = base_ni;
 ni->nr_extents = -1;

 ntfs_attr_put_search_ctx(ctx);
 unmap_mft_record(base_ni);

 ntfs_debug("Done.");
 return 0;

unm_err_out:
 if (!err)
  err = -EIO;
 if (ctx)
  ntfs_attr_put_search_ctx(ctx);
 unmap_mft_record(base_ni);
err_out:
 ntfs_error(vol->sb, "Failed with error code %i while reading attribute "
   "inode (mft_no 0x%lx, type 0x%x, name_len %i).  "
   "Marking corrupt inode and base inode 0x%lx as bad.  "
   "Run chkdsk.", err, vi->i_ino, ni->type, ni->name_len,
   base_vi->i_ino);
 make_bad_inode(vi);
 if (err != -ENOMEM)
  NVolSetErrors(vol);
 return err;
}
