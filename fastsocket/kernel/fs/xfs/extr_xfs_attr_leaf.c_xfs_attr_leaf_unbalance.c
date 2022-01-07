
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


typedef int xfs_mount_t ;
struct TYPE_19__ {scalar_t__ blocksize; TYPE_15__* args; int * mp; } ;
typedef TYPE_3__ xfs_da_state_t ;
struct TYPE_20__ {scalar_t__ magic; void* hashval; TYPE_7__* bp; } ;
typedef TYPE_4__ xfs_da_state_blk_t ;
struct TYPE_17__ {scalar_t__ magic; } ;
struct TYPE_22__ {scalar_t__ holes; scalar_t__ count; scalar_t__ usedbytes; void* firstused; TYPE_1__ info; } ;
struct TYPE_21__ {TYPE_6__ hdr; TYPE_2__* entries; } ;
typedef TYPE_5__ xfs_attr_leafblock_t ;
typedef TYPE_6__ xfs_attr_leaf_hdr_t ;
struct TYPE_23__ {TYPE_5__* data; } ;
struct TYPE_18__ {int hashval; } ;
struct TYPE_16__ {int trans; } ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 scalar_t__ XFS_ATTR_LEAF_MAGIC ;
 scalar_t__ XFS_ATTR_LEAF_NAME_ALIGN ;
 int be16_to_cpu (scalar_t__) ;
 void* be32_to_cpu (int ) ;
 void* cpu_to_be16 (scalar_t__) ;
 char* kmem_alloc (scalar_t__,int ) ;
 int kmem_free (char*) ;
 int memcpy (char*,char*,scalar_t__) ;
 int memset (char*,int ,scalar_t__) ;
 int trace_xfs_attr_leaf_unbalance (TYPE_15__*) ;
 int xfs_attr_leaf_moveents (TYPE_5__*,int ,TYPE_5__*,int,int,int *) ;
 scalar_t__ xfs_attr_leaf_order (TYPE_7__*,TYPE_7__*) ;
 int xfs_da_log_buf (int ,TYPE_7__*,int ,int ) ;

void
xfs_attr_leaf_unbalance(xfs_da_state_t *state, xfs_da_state_blk_t *drop_blk,
           xfs_da_state_blk_t *save_blk)
{
 xfs_attr_leafblock_t *drop_leaf, *save_leaf, *tmp_leaf;
 xfs_attr_leaf_hdr_t *drop_hdr, *save_hdr, *tmp_hdr;
 xfs_mount_t *mp;
 char *tmpbuffer;

 trace_xfs_attr_leaf_unbalance(state->args);




 mp = state->mp;
 ASSERT(drop_blk->magic == XFS_ATTR_LEAF_MAGIC);
 ASSERT(save_blk->magic == XFS_ATTR_LEAF_MAGIC);
 drop_leaf = drop_blk->bp->data;
 save_leaf = save_blk->bp->data;
 ASSERT(be16_to_cpu(drop_leaf->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);
 ASSERT(be16_to_cpu(save_leaf->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);
 drop_hdr = &drop_leaf->hdr;
 save_hdr = &save_leaf->hdr;




 drop_blk->hashval = be32_to_cpu(
  drop_leaf->entries[be16_to_cpu(drop_leaf->hdr.count)-1].hashval);






 if (save_hdr->holes == 0) {




  if (xfs_attr_leaf_order(save_blk->bp, drop_blk->bp)) {
   xfs_attr_leaf_moveents(drop_leaf, 0, save_leaf, 0,
        be16_to_cpu(drop_hdr->count), mp);
  } else {
   xfs_attr_leaf_moveents(drop_leaf, 0, save_leaf,
      be16_to_cpu(save_hdr->count),
      be16_to_cpu(drop_hdr->count), mp);
  }
 } else {




  tmpbuffer = kmem_alloc(state->blocksize, KM_SLEEP);
  ASSERT(tmpbuffer != ((void*)0));
  memset(tmpbuffer, 0, state->blocksize);
  tmp_leaf = (xfs_attr_leafblock_t *)tmpbuffer;
  tmp_hdr = &tmp_leaf->hdr;
  tmp_hdr->info = save_hdr->info;
  tmp_hdr->count = 0;
  tmp_hdr->firstused = cpu_to_be16(state->blocksize);
  if (!tmp_hdr->firstused) {
   tmp_hdr->firstused = cpu_to_be16(
    state->blocksize - XFS_ATTR_LEAF_NAME_ALIGN);
  }
  tmp_hdr->usedbytes = 0;
  if (xfs_attr_leaf_order(save_blk->bp, drop_blk->bp)) {
   xfs_attr_leaf_moveents(drop_leaf, 0, tmp_leaf, 0,
    be16_to_cpu(drop_hdr->count), mp);
   xfs_attr_leaf_moveents(save_leaf, 0, tmp_leaf,
      be16_to_cpu(tmp_leaf->hdr.count),
      be16_to_cpu(save_hdr->count), mp);
  } else {
   xfs_attr_leaf_moveents(save_leaf, 0, tmp_leaf, 0,
    be16_to_cpu(save_hdr->count), mp);
   xfs_attr_leaf_moveents(drop_leaf, 0, tmp_leaf,
    be16_to_cpu(tmp_leaf->hdr.count),
    be16_to_cpu(drop_hdr->count), mp);
  }
  memcpy((char *)save_leaf, (char *)tmp_leaf, state->blocksize);
  kmem_free(tmpbuffer);
 }

 xfs_da_log_buf(state->args->trans, save_blk->bp, 0,
        state->blocksize - 1);




 save_blk->hashval = be32_to_cpu(
  save_leaf->entries[be16_to_cpu(save_leaf->hdr.count)-1].hashval);
}
