
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int magic; } ;
struct TYPE_9__ {int count; TYPE_2__ info; } ;
struct TYPE_10__ {TYPE_3__ hdr; TYPE_1__* ents; } ;
typedef TYPE_4__ xfs_dir2_leaf_t ;
typedef int xfs_dahash_t ;
struct TYPE_11__ {TYPE_4__* data; } ;
typedef TYPE_5__ xfs_dabuf_t ;
struct TYPE_7__ {int hashval; } ;


 int ASSERT (int) ;
 int XFS_DIR2_LEAFN_MAGIC ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;

xfs_dahash_t
xfs_dir2_leafn_lasthash(
 xfs_dabuf_t *bp,
 int *count)
{
 xfs_dir2_leaf_t *leaf;

 leaf = bp->data;
 ASSERT(be16_to_cpu(leaf->hdr.info.magic) == XFS_DIR2_LEAFN_MAGIC);
 if (count)
  *count = be16_to_cpu(leaf->hdr.count);
 if (!leaf->hdr.count)
  return 0;
 return be32_to_cpu(leaf->ents[be16_to_cpu(leaf->hdr.count) - 1].hashval);
}
