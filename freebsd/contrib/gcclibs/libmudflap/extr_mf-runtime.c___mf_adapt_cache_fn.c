
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tree_stats {double total_weight; double weighted_size; int** weighted_address_bits; int live_obj_count; int total_size; int obj_count; } ;
typedef TYPE_1__* mfsplay_tree_node ;
struct TYPE_5__ {uintptr_t high; uintptr_t low; int liveness; scalar_t__ write_count; scalar_t__ read_count; } ;
typedef TYPE_2__ __mf_object_t ;
struct TYPE_4__ {scalar_t__ value; } ;


 int assert (int) ;

__attribute__((used)) static int
__mf_adapt_cache_fn (mfsplay_tree_node n, void *param)
{
  __mf_object_t *obj = (__mf_object_t *) n->value;
  struct tree_stats *s = (struct tree_stats *) param;

  assert (obj != ((void*)0) && s != ((void*)0));


  if (obj->read_count + obj->write_count)
    {
      s->obj_count ++;
      s->total_size += (obj->high - obj->low + 1);

      if (obj->liveness)
        {
          unsigned i;
          uintptr_t addr;




          s->live_obj_count ++;
          s->total_weight += (double) obj->liveness;
          s->weighted_size +=
            (double) (obj->high - obj->low + 1) *
            (double) obj->liveness;

          addr = obj->low;
          for (i=0; i<sizeof(uintptr_t) * 8; i++)
            {
              unsigned bit = addr & 1;
              s->weighted_address_bits[i][bit] += obj->liveness;
              addr = addr >> 1;
            }


          obj->liveness >>= 1;
        }
    }

  return 0;
}
