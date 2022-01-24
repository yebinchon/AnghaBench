#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int DO_SPECULATION ; 
 int /*<<< orphan*/ * anti_dependency_cache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int cache_size ; 
 TYPE_1__* current_sched_info ; 
 int /*<<< orphan*/ * forward_dependency_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * output_dependency_cache ; 
 int /*<<< orphan*/ * spec_dependency_cache ; 
 int /*<<< orphan*/ * true_dependency_cache ; 

void
FUNC2 (void)
{
  if (true_dependency_cache)
    {
      int i;

      for (i = 0; i < cache_size; i++)
	{
	  FUNC0 (&true_dependency_cache[i]);
	  FUNC0 (&output_dependency_cache[i]);
	  FUNC0 (&anti_dependency_cache[i]);
#ifdef ENABLE_CHECKING
	  bitmap_clear (&forward_dependency_cache[i]);
#endif
          if (current_sched_info->flags & DO_SPECULATION)
            FUNC0 (&spec_dependency_cache[i]);
	}
      FUNC1 (true_dependency_cache);
      true_dependency_cache = NULL;
      FUNC1 (output_dependency_cache);
      output_dependency_cache = NULL;
      FUNC1 (anti_dependency_cache);
      anti_dependency_cache = NULL;
#ifdef ENABLE_CHECKING
      free (forward_dependency_cache);
      forward_dependency_cache = NULL;
#endif
      if (current_sched_info->flags & DO_SPECULATION)
        {
          FUNC1 (spec_dependency_cache);
          spec_dependency_cache = NULL;
        }
    }
}