
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int magic; } ;
struct TYPE_10__ {int count; TYPE_1__ info; } ;
struct TYPE_11__ {TYPE_3__ hdr; TYPE_2__* ents; } ;
typedef TYPE_4__ xfs_dir2_leaf_t ;
struct TYPE_12__ {TYPE_4__* data; } ;
typedef TYPE_5__ xfs_dabuf_t ;
struct TYPE_9__ {int hashval; } ;


 int ASSERT (int) ;
 int XFS_DIR2_LEAFN_MAGIC ;
 int be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;

int
xfs_dir2_leafn_order(
 xfs_dabuf_t *leaf1_bp,
 xfs_dabuf_t *leaf2_bp)
{
 xfs_dir2_leaf_t *leaf1;
 xfs_dir2_leaf_t *leaf2;

 leaf1 = leaf1_bp->data;
 leaf2 = leaf2_bp->data;
 ASSERT(be16_to_cpu(leaf1->hdr.info.magic) == XFS_DIR2_LEAFN_MAGIC);
 ASSERT(be16_to_cpu(leaf2->hdr.info.magic) == XFS_DIR2_LEAFN_MAGIC);
 if (be16_to_cpu(leaf1->hdr.count) > 0 &&
     be16_to_cpu(leaf2->hdr.count) > 0 &&
     (be32_to_cpu(leaf2->ents[0].hashval) < be32_to_cpu(leaf1->ents[0].hashval) ||
      be32_to_cpu(leaf2->ents[be16_to_cpu(leaf2->hdr.count) - 1].hashval) <
      be32_to_cpu(leaf1->ents[be16_to_cpu(leaf1->hdr.count) - 1].hashval)))
  return 1;
 return 0;
}
