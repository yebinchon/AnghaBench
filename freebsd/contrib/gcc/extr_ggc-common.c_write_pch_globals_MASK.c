#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct traversal_state {int /*<<< orphan*/  f; } ;
struct ptr_data {void* new_addr; } ;
struct ggc_root_tab {size_t nelt; size_t stride; int /*<<< orphan*/ * base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (void**,int,int,int /*<<< orphan*/ ) ; 
 struct ptr_data* FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  saving_htab ; 

__attribute__((used)) static void
FUNC4 (const struct ggc_root_tab * const *tab,
		   struct traversal_state *state)
{
  const struct ggc_root_tab *const *rt;
  const struct ggc_root_tab *rti;
  size_t i;

  for (rt = tab; *rt; rt++)
    for (rti = *rt; rti->base != NULL; rti++)
      for (i = 0; i < rti->nelt; i++)
	{
	  void *ptr = *(void **)((char *)rti->base + rti->stride * i);
	  struct ptr_data *new_ptr;
	  if (ptr == NULL || ptr == (void *)1)
	    {
	      if (FUNC2 (&ptr, sizeof (void *), 1, state->f)
		  != 1)
		FUNC1 ("can't write PCH file: %m");
	    }
	  else
	    {
	      new_ptr = FUNC3 (saving_htab, ptr,
					     FUNC0 (ptr));
	      if (FUNC2 (&new_ptr->new_addr, sizeof (void *), 1, state->f)
		  != 1)
		FUNC1 ("can't write PCH file: %m");
	    }
	}
}