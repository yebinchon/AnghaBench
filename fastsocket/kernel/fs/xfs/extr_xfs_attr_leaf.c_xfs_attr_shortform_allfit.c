
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ di_format; } ;
struct TYPE_19__ {TYPE_4__ i_d; TYPE_3__* i_mount; } ;
typedef TYPE_5__ xfs_inode_t ;
struct TYPE_20__ {TYPE_7__* data; } ;
typedef TYPE_6__ xfs_dabuf_t ;
struct TYPE_15__ {int magic; } ;
struct TYPE_16__ {int count; TYPE_1__ info; } ;
struct TYPE_21__ {TYPE_2__ hdr; TYPE_9__* entries; } ;
typedef TYPE_7__ xfs_attr_leafblock_t ;
struct TYPE_22__ {int namelen; int valuelen; } ;
typedef TYPE_8__ xfs_attr_leaf_name_local_t ;
struct TYPE_23__ {int flags; } ;
typedef TYPE_9__ xfs_attr_leaf_entry_t ;
struct xfs_attr_sf_hdr {int dummy; } ;
struct xfs_attr_sf_entry {int dummy; } ;
struct TYPE_17__ {int m_flags; } ;


 int ASSERT (int) ;
 int XFS_ATTR_INCOMPLETE ;
 int XFS_ATTR_LEAF_MAGIC ;
 int XFS_ATTR_LOCAL ;
 int XFS_ATTR_SF_ENTSIZE_MAX ;
 scalar_t__ XFS_DINODE_FMT_BTREE ;
 int XFS_MOUNT_ATTR2 ;
 int be16_to_cpu (int ) ;
 TYPE_8__* xfs_attr_leaf_name_local (TYPE_7__*,int) ;
 int xfs_attr_shortform_bytesfit (TYPE_5__*,int) ;

int
xfs_attr_shortform_allfit(xfs_dabuf_t *bp, xfs_inode_t *dp)
{
 xfs_attr_leafblock_t *leaf;
 xfs_attr_leaf_entry_t *entry;
 xfs_attr_leaf_name_local_t *name_loc;
 int bytes, i;

 leaf = bp->data;
 ASSERT(be16_to_cpu(leaf->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);

 entry = &leaf->entries[0];
 bytes = sizeof(struct xfs_attr_sf_hdr);
 for (i = 0; i < be16_to_cpu(leaf->hdr.count); entry++, i++) {
  if (entry->flags & XFS_ATTR_INCOMPLETE)
   continue;
  if (!(entry->flags & XFS_ATTR_LOCAL))
   return(0);
  name_loc = xfs_attr_leaf_name_local(leaf, i);
  if (name_loc->namelen >= XFS_ATTR_SF_ENTSIZE_MAX)
   return(0);
  if (be16_to_cpu(name_loc->valuelen) >= XFS_ATTR_SF_ENTSIZE_MAX)
   return(0);
  bytes += sizeof(struct xfs_attr_sf_entry)-1
    + name_loc->namelen
    + be16_to_cpu(name_loc->valuelen);
 }
 if ((dp->i_mount->m_flags & XFS_MOUNT_ATTR2) &&
     (dp->i_d.di_format != XFS_DINODE_FMT_BTREE) &&
     (bytes == sizeof(struct xfs_attr_sf_hdr)))
  return(-1);
 return(xfs_attr_shortform_bytesfit(dp, bytes));
}
