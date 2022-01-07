
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {scalar_t__ base_ntfs_ino; int is_first; scalar_t__ ntfs_ino; int base_mrec; int * al_entry; TYPE_1__* mrec; int * attr; } ;
typedef TYPE_2__ ntfs_attr_search_ctx ;
struct TYPE_5__ {int attrs_offset; } ;
typedef int ATTR_RECORD ;


 int le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int ntfs_attr_init_search_ctx (TYPE_2__*,scalar_t__,int ) ;
 int unmap_extent_mft_record (scalar_t__) ;

void ntfs_attr_reinit_search_ctx(ntfs_attr_search_ctx *ctx)
{
 if (likely(!ctx->base_ntfs_ino)) {

  ctx->is_first = 1;

  ctx->attr = (ATTR_RECORD*)((u8*)ctx->mrec +
    le16_to_cpu(ctx->mrec->attrs_offset));




  ctx->al_entry = ((void*)0);
  return;
 }
 if (ctx->ntfs_ino != ctx->base_ntfs_ino)
  unmap_extent_mft_record(ctx->ntfs_ino);
 ntfs_attr_init_search_ctx(ctx, ctx->base_ntfs_ino, ctx->base_mrec);
 return;
}
