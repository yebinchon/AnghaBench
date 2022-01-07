
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int DO_SPECULATION ;
 int * anti_dependency_cache ;
 int bitmap_clear (int *) ;
 int cache_size ;
 TYPE_1__* current_sched_info ;
 int * forward_dependency_cache ;
 int free (int *) ;
 int * output_dependency_cache ;
 int * spec_dependency_cache ;
 int * true_dependency_cache ;

void
free_dependency_caches (void)
{
  if (true_dependency_cache)
    {
      int i;

      for (i = 0; i < cache_size; i++)
 {
   bitmap_clear (&true_dependency_cache[i]);
   bitmap_clear (&output_dependency_cache[i]);
   bitmap_clear (&anti_dependency_cache[i]);



          if (current_sched_info->flags & DO_SPECULATION)
            bitmap_clear (&spec_dependency_cache[i]);
 }
      free (true_dependency_cache);
      true_dependency_cache = ((void*)0);
      free (output_dependency_cache);
      output_dependency_cache = ((void*)0);
      free (anti_dependency_cache);
      anti_dependency_cache = ((void*)0);




      if (current_sched_info->flags & DO_SPECULATION)
        {
          free (spec_dependency_cache);
          spec_dependency_cache = ((void*)0);
        }
    }
}
