
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int count; int stale; } ;
struct TYPE_8__ {TYPE_2__ hdr; TYPE_1__* ents; } ;
typedef TYPE_3__ xfs_dir2_leaf_t ;
struct TYPE_9__ {TYPE_3__* data; } ;
typedef TYPE_4__ xfs_dabuf_t ;
struct TYPE_6__ {int address; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_NULL_DATAPTR ;
 int be16_add_cpu (int *,int) ;
 int be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int cpu_to_be16 (int) ;

void
xfs_dir2_leaf_compact_x1(
 xfs_dabuf_t *bp,
 int *indexp,
 int *lowstalep,
 int *highstalep,
 int *lowlogp,
 int *highlogp)
{
 int from;
 int highstale;
 int index;
 int keepstale;
 xfs_dir2_leaf_t *leaf;
 int lowstale;
 int newindex=0;
 int to;

 leaf = bp->data;
 ASSERT(be16_to_cpu(leaf->hdr.stale) > 1);
 index = *indexp;



 for (lowstale = index - 1;
      lowstale >= 0 &&
  be32_to_cpu(leaf->ents[lowstale].address) != XFS_DIR2_NULL_DATAPTR;
      lowstale--)
  continue;




 for (highstale = index;
      highstale < be16_to_cpu(leaf->hdr.count) &&
  be32_to_cpu(leaf->ents[highstale].address) != XFS_DIR2_NULL_DATAPTR &&
  (lowstale < 0 || index - lowstale > highstale - index);
      highstale++)
  continue;



 if (lowstale >= 0 &&
     (highstale == be16_to_cpu(leaf->hdr.count) ||
      index - lowstale <= highstale - index))
  keepstale = lowstale;
 else
  keepstale = highstale;




 for (from = to = 0; from < be16_to_cpu(leaf->hdr.count); from++) {



  if (index == from)
   newindex = to;
  if (from != keepstale &&
      be32_to_cpu(leaf->ents[from].address) == XFS_DIR2_NULL_DATAPTR) {
   if (from == to)
    *lowlogp = to;
   continue;
  }



  if (from == keepstale)
   lowstale = highstale = to;



  if (from > to)
   leaf->ents[to] = leaf->ents[from];
  to++;
 }
 ASSERT(from > to);




 if (index == from)
  newindex = to;
 *indexp = newindex;



 be16_add_cpu(&leaf->hdr.count, -(from - to));
 leaf->hdr.stale = cpu_to_be16(1);




 if (lowstale >= newindex)
  lowstale = -1;
 else
  highstale = be16_to_cpu(leaf->hdr.count);
 *highlogp = be16_to_cpu(leaf->hdr.count) - 1;
 *lowstalep = lowstale;
 *highstalep = highstale;
}
