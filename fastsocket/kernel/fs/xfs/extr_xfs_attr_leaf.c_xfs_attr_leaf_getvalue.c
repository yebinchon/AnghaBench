
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {TYPE_6__* data; } ;
typedef TYPE_4__ xfs_dabuf_t ;
struct TYPE_20__ {int index; size_t namelen; int flags; int valuelen; TYPE_3__* dp; int rmtblkcnt; void* rmtblkno; int name; int value; } ;
typedef TYPE_5__ xfs_da_args_t ;
struct TYPE_16__ {int magic; } ;
struct TYPE_17__ {int count; TYPE_1__ info; } ;
struct TYPE_21__ {TYPE_9__* entries; TYPE_2__ hdr; } ;
typedef TYPE_6__ xfs_attr_leafblock_t ;
struct TYPE_22__ {size_t namelen; int valueblk; int valuelen; int * name; } ;
typedef TYPE_7__ xfs_attr_leaf_name_remote_t ;
struct TYPE_23__ {size_t namelen; int * nameval; int valuelen; } ;
typedef TYPE_8__ xfs_attr_leaf_name_local_t ;
struct TYPE_24__ {int flags; } ;
typedef TYPE_9__ xfs_attr_leaf_entry_t ;
struct TYPE_18__ {int i_mount; } ;


 int ASSERT (int) ;
 int ATTR_KERNOVAL ;
 int ERANGE ;
 int XFS_ATTR_LEAF_MAGIC ;
 int XFS_ATTR_LOCAL ;
 int XFS_B_TO_FSB (int ,int) ;
 int XFS_ERROR (int ) ;
 int XFS_LBSIZE (int ) ;
 int be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 scalar_t__ memcmp (int ,int *,size_t) ;
 int memcpy (int ,int *,int) ;
 TYPE_8__* xfs_attr_leaf_name_local (TYPE_6__*,size_t) ;
 TYPE_7__* xfs_attr_leaf_name_remote (TYPE_6__*,size_t) ;

int
xfs_attr_leaf_getvalue(xfs_dabuf_t *bp, xfs_da_args_t *args)
{
 int valuelen;
 xfs_attr_leafblock_t *leaf;
 xfs_attr_leaf_entry_t *entry;
 xfs_attr_leaf_name_local_t *name_loc;
 xfs_attr_leaf_name_remote_t *name_rmt;

 leaf = bp->data;
 ASSERT(be16_to_cpu(leaf->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);
 ASSERT(be16_to_cpu(leaf->hdr.count)
     < (XFS_LBSIZE(args->dp->i_mount)/8));
 ASSERT(args->index < be16_to_cpu(leaf->hdr.count));

 entry = &leaf->entries[args->index];
 if (entry->flags & XFS_ATTR_LOCAL) {
  name_loc = xfs_attr_leaf_name_local(leaf, args->index);
  ASSERT(name_loc->namelen == args->namelen);
  ASSERT(memcmp(args->name, name_loc->nameval, args->namelen) == 0);
  valuelen = be16_to_cpu(name_loc->valuelen);
  if (args->flags & ATTR_KERNOVAL) {
   args->valuelen = valuelen;
   return(0);
  }
  if (args->valuelen < valuelen) {
   args->valuelen = valuelen;
   return(XFS_ERROR(ERANGE));
  }
  args->valuelen = valuelen;
  memcpy(args->value, &name_loc->nameval[args->namelen], valuelen);
 } else {
  name_rmt = xfs_attr_leaf_name_remote(leaf, args->index);
  ASSERT(name_rmt->namelen == args->namelen);
  ASSERT(memcmp(args->name, name_rmt->name, args->namelen) == 0);
  valuelen = be32_to_cpu(name_rmt->valuelen);
  args->rmtblkno = be32_to_cpu(name_rmt->valueblk);
  args->rmtblkcnt = XFS_B_TO_FSB(args->dp->i_mount, valuelen);
  if (args->flags & ATTR_KERNOVAL) {
   args->valuelen = valuelen;
   return(0);
  }
  if (args->valuelen < valuelen) {
   args->valuelen = valuelen;
   return(XFS_ERROR(ERANGE));
  }
  args->valuelen = valuelen;
 }
 return(0);
}
