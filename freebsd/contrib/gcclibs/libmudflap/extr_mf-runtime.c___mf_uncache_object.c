
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct __mf_cache {uintptr_t low; uintptr_t high; } ;
struct TYPE_3__ {uintptr_t low; uintptr_t high; scalar_t__ write_count; scalar_t__ read_count; } ;
typedef TYPE_1__ __mf_object_t ;


 scalar_t__ LIKELY (scalar_t__) ;
 uintptr_t MAXPTR ;
 uintptr_t MINPTR ;
 unsigned int __mf_lc_mask ;
 struct __mf_cache* __mf_lookup_cache ;

__attribute__((used)) static void
__mf_uncache_object (__mf_object_t *old_obj)
{



  if (LIKELY (old_obj->read_count + old_obj->write_count))
    {


      uintptr_t low = old_obj->low;
      uintptr_t high = old_obj->high;
      struct __mf_cache *entry = & __mf_lookup_cache [0];
      unsigned i;
      for (i = 0; i <= __mf_lc_mask; i++, entry++)
        {




          if (entry->low == low || entry->high == high)
            {
              entry->low = MAXPTR;
              entry->high = MINPTR;
            }
        }
    }
}
