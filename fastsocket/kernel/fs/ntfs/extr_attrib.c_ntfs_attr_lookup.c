
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int ntfschar ;
typedef int ntfs_inode ;
struct TYPE_5__ {int * ntfs_ino; int * base_ntfs_ino; int mrec; } ;
typedef TYPE_1__ ntfs_attr_search_ctx ;
typedef int VCN ;
typedef int IGNORE_CASE_BOOL ;
typedef scalar_t__ ATTR_TYPE ;


 scalar_t__ const AT_ATTRIBUTE_LIST ;
 int BUG_ON (int) ;
 int IS_ERR (int ) ;
 int NInoAttrList (int *) ;
 int ntfs_attr_find (scalar_t__ const,int const*,int const,int const,int const*,int const,TYPE_1__*) ;
 int ntfs_debug (char*) ;
 int ntfs_external_attr_find (scalar_t__ const,int const*,int const,int const,int const,int const*,int const,TYPE_1__*) ;

int ntfs_attr_lookup(const ATTR_TYPE type, const ntfschar *name,
  const u32 name_len, const IGNORE_CASE_BOOL ic,
  const VCN lowest_vcn, const u8 *val, const u32 val_len,
  ntfs_attr_search_ctx *ctx)
{
 ntfs_inode *base_ni;

 ntfs_debug("Entering.");
 BUG_ON(IS_ERR(ctx->mrec));
 if (ctx->base_ntfs_ino)
  base_ni = ctx->base_ntfs_ino;
 else
  base_ni = ctx->ntfs_ino;

 BUG_ON(!base_ni);
 if (!NInoAttrList(base_ni) || type == AT_ATTRIBUTE_LIST)
  return ntfs_attr_find(type, name, name_len, ic, val, val_len,
    ctx);
 return ntfs_external_attr_find(type, name, name_len, ic, lowest_vcn,
   val, val_len, ctx);
}
