
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_12__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int const ntfschar ;
struct TYPE_21__ {int sb; int upcase_len; int upcase; } ;
typedef TYPE_3__ ntfs_volume ;
struct TYPE_22__ {scalar_t__ mft_no; int attr_list_size; scalar_t__ seq_no; int * attr_list; TYPE_3__* vol; } ;
typedef TYPE_4__ ntfs_inode ;
struct TYPE_23__ {int is_first; TYPE_6__* base_attr; TYPE_12__* base_mrec; TYPE_4__* base_ntfs_ino; TYPE_4__* ntfs_ino; TYPE_12__* mrec; TYPE_6__* attr; TYPE_7__* al_entry; } ;
typedef TYPE_5__ ntfs_attr_search_ctx ;
typedef scalar_t__ VCN ;
struct TYPE_25__ {scalar_t__ const type; scalar_t__ name_length; int name_offset; scalar_t__ instance; int mft_reference; int lowest_vcn; int length; } ;
struct TYPE_19__ {scalar_t__ const value_length; int value_offset; } ;
struct TYPE_20__ {TYPE_1__ resident; } ;
struct TYPE_24__ {scalar_t__ const type; scalar_t__ const length; scalar_t__ instance; scalar_t__ name_length; TYPE_2__ data; int non_resident; int name_offset; } ;
struct TYPE_18__ {scalar_t__ const bytes_allocated; int attrs_offset; } ;
typedef int IGNORE_CASE_BOOL ;
typedef scalar_t__ ATTR_TYPE ;
typedef TYPE_6__ ATTR_RECORD ;
typedef TYPE_7__ ATTR_LIST_ENTRY ;


 scalar_t__ const AT_END ;
 int const CASE_SENSITIVE ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int const IGNORE_CASE ;
 scalar_t__ IS_ERR (TYPE_12__*) ;
 scalar_t__ MREF_LE (int ) ;
 scalar_t__ MSEQNO_LE (int ) ;
 int NVolSetErrors (TYPE_3__*) ;
 int PTR_ERR (TYPE_12__*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (scalar_t__ const) ;
 int le64_to_cpu (int ) ;
 TYPE_12__* map_extent_mft_record (TYPE_4__*,int ,TYPE_4__**) ;
 int memcmp (int *,int const*,scalar_t__ const) ;
 scalar_t__ ntfs_are_names_equal (int const*,scalar_t__,int const*,scalar_t__ const,int const,int ,int ) ;
 int ntfs_attr_find (scalar_t__ const,int const*,scalar_t__ const,int const,int const*,scalar_t__ const,TYPE_5__*) ;
 int ntfs_attr_reinit_search_ctx (TYPE_5__*) ;
 int ntfs_collate_names (int const*,scalar_t__ const,int const*,scalar_t__,int,int const,int ,int ) ;
 int ntfs_debug (char*,...) ;
 int ntfs_error (int ,char*,scalar_t__,char const*,...) ;
 scalar_t__ const sle64_to_cpu (int ) ;
 int unmap_extent_mft_record (TYPE_4__*) ;

__attribute__((used)) static int ntfs_external_attr_find(const ATTR_TYPE type,
  const ntfschar *name, const u32 name_len,
  const IGNORE_CASE_BOOL ic, const VCN lowest_vcn,
  const u8 *val, const u32 val_len, ntfs_attr_search_ctx *ctx)
{
 ntfs_inode *base_ni, *ni;
 ntfs_volume *vol;
 ATTR_LIST_ENTRY *al_entry, *next_al_entry;
 u8 *al_start, *al_end;
 ATTR_RECORD *a;
 ntfschar *al_name;
 u32 al_name_len;
 int err = 0;
 static const char *es = " Unmount and run chkdsk.";

 ni = ctx->ntfs_ino;
 base_ni = ctx->base_ntfs_ino;
 ntfs_debug("Entering for inode 0x%lx, type 0x%x.", ni->mft_no, type);
 if (!base_ni) {

  base_ni = ctx->base_ntfs_ino = ctx->ntfs_ino;
  ctx->base_mrec = ctx->mrec;
 }
 if (ni == base_ni)
  ctx->base_attr = ctx->attr;
 if (type == AT_END)
  goto not_found;
 vol = base_ni->vol;
 al_start = base_ni->attr_list;
 al_end = al_start + base_ni->attr_list_size;
 if (!ctx->al_entry)
  ctx->al_entry = (ATTR_LIST_ENTRY*)al_start;




 if (ctx->is_first) {
  al_entry = ctx->al_entry;
  ctx->is_first = 0;
 } else
  al_entry = (ATTR_LIST_ENTRY*)((u8*)ctx->al_entry +
    le16_to_cpu(ctx->al_entry->length));
 for (;; al_entry = next_al_entry) {

  if ((u8*)al_entry < base_ni->attr_list ||
    (u8*)al_entry > al_end)
   break;
  ctx->al_entry = al_entry;

  if ((u8*)al_entry == al_end)
   goto not_found;
  if (!al_entry->length)
   break;
  if ((u8*)al_entry + 6 > al_end || (u8*)al_entry +
    le16_to_cpu(al_entry->length) > al_end)
   break;
  next_al_entry = (ATTR_LIST_ENTRY*)((u8*)al_entry +
    le16_to_cpu(al_entry->length));
  if (le32_to_cpu(al_entry->type) > le32_to_cpu(type))
   goto not_found;
  if (type != al_entry->type)
   continue;




  al_name_len = al_entry->name_length;
  al_name = (ntfschar*)((u8*)al_entry + al_entry->name_offset);
  if (!name) {
   if (al_name_len)
    goto not_found;
  } else if (!ntfs_are_names_equal(al_name, al_name_len, name,
    name_len, ic, vol->upcase, vol->upcase_len)) {
   register int rc;

   rc = ntfs_collate_names(name, name_len, al_name,
     al_name_len, 1, IGNORE_CASE,
     vol->upcase, vol->upcase_len);




   if (rc == -1)
    goto not_found;

   if (rc)
    continue;
   rc = ntfs_collate_names(name, name_len, al_name,
     al_name_len, 1, CASE_SENSITIVE,
     vol->upcase, vol->upcase_len);
   if (rc == -1)
    goto not_found;
   if (rc)
    continue;
  }






  if (lowest_vcn && (u8*)next_al_entry >= al_start &&
    (u8*)next_al_entry + 6 < al_end &&
    (u8*)next_al_entry + le16_to_cpu(
     next_al_entry->length) <= al_end &&
    sle64_to_cpu(next_al_entry->lowest_vcn) <=
     lowest_vcn &&
    next_al_entry->type == al_entry->type &&
    next_al_entry->name_length == al_name_len &&
    ntfs_are_names_equal((ntfschar*)((u8*)
     next_al_entry +
     next_al_entry->name_offset),
     next_al_entry->name_length,
     al_name, al_name_len, CASE_SENSITIVE,
     vol->upcase, vol->upcase_len))
   continue;
  if (MREF_LE(al_entry->mft_reference) == ni->mft_no) {
   if (MSEQNO_LE(al_entry->mft_reference) != ni->seq_no) {
    ntfs_error(vol->sb, "Found stale mft "
      "reference in attribute list "
      "of base inode 0x%lx.%s",
      base_ni->mft_no, es);
    err = -EIO;
    break;
   }
  } else {

   if (ni != base_ni)
    unmap_extent_mft_record(ni);

   if (MREF_LE(al_entry->mft_reference) ==
     base_ni->mft_no) {
    ni = ctx->ntfs_ino = base_ni;
    ctx->mrec = ctx->base_mrec;
   } else {

    ctx->mrec = map_extent_mft_record(base_ni,
      le64_to_cpu(
      al_entry->mft_reference), &ni);
    if (IS_ERR(ctx->mrec)) {
     ntfs_error(vol->sb, "Failed to map "
       "extent mft record "
       "0x%lx of base inode "
       "0x%lx.%s",
       MREF_LE(al_entry->
       mft_reference),
       base_ni->mft_no, es);
     err = PTR_ERR(ctx->mrec);
     if (err == -ENOENT)
      err = -EIO;

     ni = ((void*)0);
     break;
    }
    ctx->ntfs_ino = ni;
   }
   ctx->attr = (ATTR_RECORD*)((u8*)ctx->mrec +
     le16_to_cpu(ctx->mrec->attrs_offset));
  }
  a = ctx->attr;




do_next_attr_loop:
  if ((u8*)a < (u8*)ctx->mrec || (u8*)a > (u8*)ctx->mrec +
    le32_to_cpu(ctx->mrec->bytes_allocated))
   break;
  if (a->type == AT_END)
   break;
  if (!a->length)
   break;
  if (al_entry->instance != a->instance)
   goto do_next_attr;





  if (al_entry->type != a->type)
   break;
  if (!ntfs_are_names_equal((ntfschar*)((u8*)a +
    le16_to_cpu(a->name_offset)), a->name_length,
    al_name, al_name_len, CASE_SENSITIVE,
    vol->upcase, vol->upcase_len))
   break;
  ctx->attr = a;




  if (!val || (!a->non_resident && le32_to_cpu(
    a->data.resident.value_length) == val_len &&
    !memcmp((u8*)a +
    le16_to_cpu(a->data.resident.value_offset),
    val, val_len))) {
   ntfs_debug("Done, found.");
   return 0;
  }
do_next_attr:

  a = (ATTR_RECORD*)((u8*)a + le32_to_cpu(a->length));
  goto do_next_attr_loop;
 }
 if (!err) {
  ntfs_error(vol->sb, "Base inode 0x%lx contains corrupt "
    "attribute list attribute.%s", base_ni->mft_no,
    es);
  err = -EIO;
 }
 if (ni != base_ni) {
  if (ni)
   unmap_extent_mft_record(ni);
  ctx->ntfs_ino = base_ni;
  ctx->mrec = ctx->base_mrec;
  ctx->attr = ctx->base_attr;
 }
 if (err != -ENOMEM)
  NVolSetErrors(vol);
 return err;
not_found:




 if (type == AT_END) {
  ntfs_attr_reinit_search_ctx(ctx);
  return ntfs_attr_find(AT_END, name, name_len, ic, val, val_len,
    ctx);
 }
 if (ni != base_ni)
  unmap_extent_mft_record(ni);
 ctx->mrec = ctx->base_mrec;
 ctx->attr = (ATTR_RECORD*)((u8*)ctx->mrec +
   le16_to_cpu(ctx->mrec->attrs_offset));
 ctx->is_first = 1;
 ctx->ntfs_ino = base_ni;
 ctx->base_ntfs_ino = ((void*)0);
 ctx->base_mrec = ((void*)0);
 ctx->base_attr = ((void*)0);







 do {
  err = ntfs_attr_find(type, name, name_len, ic, val, val_len,
    ctx);
 } while (!err);
 ntfs_debug("Done, not found.");
 return err;
}
