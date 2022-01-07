
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* mfsplay_tree_node ;
typedef scalar_t__ mfsplay_tree_key ;
typedef int mfsplay_tree ;
struct TYPE_8__ {uintptr_t low; uintptr_t high; } ;
typedef TYPE_2__ __mf_object_t ;
struct TYPE_7__ {scalar_t__ value; } ;


 int __mf_object_tree (int) ;
 TYPE_1__* mfsplay_tree_lookup (int ,scalar_t__) ;
 TYPE_1__* mfsplay_tree_predecessor (int ,scalar_t__) ;
 TYPE_1__* mfsplay_tree_successor (int ,scalar_t__) ;

unsigned
__mf_find_objects2 (uintptr_t ptr_low, uintptr_t ptr_high,
                    __mf_object_t **objs, unsigned max_objs, int type)
{
  unsigned count = 0;
  mfsplay_tree t = __mf_object_tree (type);
  mfsplay_tree_key k = (mfsplay_tree_key) ptr_low;
  int direction;

  mfsplay_tree_node n = mfsplay_tree_lookup (t, k);

  if (n != ((void*)0))
    {
      if (count < max_objs)
        objs[count] = (__mf_object_t *) n->value;
      count ++;
    }


  for (direction = 0; direction < 2; direction ++)
    {

      k = (mfsplay_tree_key) ptr_low;

      while (1)
        {
          __mf_object_t *obj;

          n = (direction == 0 ? mfsplay_tree_successor (t, k) : mfsplay_tree_predecessor (t, k));
          if (n == ((void*)0)) break;
          obj = (__mf_object_t *) n->value;

          if (! (obj->low <= ptr_high && obj->high >= ptr_low))
            break;

          if (count < max_objs)
            objs[count] = (__mf_object_t *) n->value;
          count ++;

          k = (mfsplay_tree_key) obj->low;
        }
    }

  return count;
}
