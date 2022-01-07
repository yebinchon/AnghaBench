
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xfs_dahash_t ;
struct TYPE_10__ {TYPE_5__* data; } ;
typedef TYPE_4__ xfs_dabuf_t ;
struct TYPE_8__ {int magic; } ;
struct TYPE_9__ {int count; TYPE_2__ info; } ;
struct TYPE_11__ {TYPE_3__ hdr; TYPE_1__* entries; } ;
typedef TYPE_5__ xfs_attr_leafblock_t ;
struct TYPE_7__ {int hashval; } ;


 int ASSERT (int) ;
 int XFS_ATTR_LEAF_MAGIC ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;

xfs_dahash_t
xfs_attr_leaf_lasthash(xfs_dabuf_t *bp, int *count)
{
 xfs_attr_leafblock_t *leaf;

 leaf = bp->data;
 ASSERT(be16_to_cpu(leaf->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);
 if (count)
  *count = be16_to_cpu(leaf->hdr.count);
 if (!leaf->hdr.count)
  return(0);
 return be32_to_cpu(leaf->entries[be16_to_cpu(leaf->hdr.count)-1].hashval);
}
