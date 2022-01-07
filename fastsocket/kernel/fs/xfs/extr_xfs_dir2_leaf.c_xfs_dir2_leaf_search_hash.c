
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int count; } ;
struct TYPE_9__ {TYPE_1__ hdr; TYPE_3__* ents; } ;
typedef TYPE_2__ xfs_dir2_leaf_t ;
struct TYPE_10__ {int hashval; } ;
typedef TYPE_3__ xfs_dir2_leaf_entry_t ;
typedef scalar_t__ xfs_dahash_t ;
struct TYPE_11__ {TYPE_2__* data; } ;
typedef TYPE_4__ xfs_dabuf_t ;
struct TYPE_12__ {scalar_t__ hashval; } ;
typedef TYPE_5__ xfs_da_args_t ;


 int be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;

int
xfs_dir2_leaf_search_hash(
 xfs_da_args_t *args,
 xfs_dabuf_t *lbp)
{
 xfs_dahash_t hash=0;
 xfs_dahash_t hashwant;
 int high;
 int low;
 xfs_dir2_leaf_t *leaf;
 xfs_dir2_leaf_entry_t *lep;
 int mid=0;

 leaf = lbp->data;

 if (!leaf->hdr.count)
  return 0;





 for (lep = leaf->ents, low = 0, high = be16_to_cpu(leaf->hdr.count) - 1,
  hashwant = args->hashval;
      low <= high; ) {
  mid = (low + high) >> 1;
  if ((hash = be32_to_cpu(lep[mid].hashval)) == hashwant)
   break;
  if (hash < hashwant)
   low = mid + 1;
  else
   high = mid - 1;
 }



 if (hash == hashwant) {
  while (mid > 0 && be32_to_cpu(lep[mid - 1].hashval) == hashwant) {
   mid--;
  }
 }



 else if (hash < hashwant)
  mid++;
 return mid;
}
