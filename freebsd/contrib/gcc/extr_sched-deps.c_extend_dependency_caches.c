
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int DO_SPECULATION ;
 int * XRESIZEVEC (int ,int *,int) ;
 int * anti_dependency_cache ;
 int bitmap_head ;
 int bitmap_initialize (int *,int ) ;
 int cache_size ;
 TYPE_1__* current_sched_info ;
 int * forward_dependency_cache ;
 int * output_dependency_cache ;
 int * spec_dependency_cache ;
 int * true_dependency_cache ;

void
extend_dependency_caches (int n, bool create_p)
{
  if (create_p || true_dependency_cache)
    {
      int i, luid = cache_size + n;

      true_dependency_cache = XRESIZEVEC (bitmap_head, true_dependency_cache,
       luid);
      output_dependency_cache = XRESIZEVEC (bitmap_head,
         output_dependency_cache, luid);
      anti_dependency_cache = XRESIZEVEC (bitmap_head, anti_dependency_cache,
       luid);




      if (current_sched_info->flags & DO_SPECULATION)
        spec_dependency_cache = XRESIZEVEC (bitmap_head, spec_dependency_cache,
         luid);

      for (i = cache_size; i < luid; i++)
 {
   bitmap_initialize (&true_dependency_cache[i], 0);
   bitmap_initialize (&output_dependency_cache[i], 0);
   bitmap_initialize (&anti_dependency_cache[i], 0);



          if (current_sched_info->flags & DO_SPECULATION)
            bitmap_initialize (&spec_dependency_cache[i], 0);
 }
      cache_size = luid;
    }
}
