#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t num_free_objects; unsigned long* in_use_p; } ;
typedef  TYPE_1__ page_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned long* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5 (page_entry *p)
{
  unsigned int i;
  size_t num_objects;

  /* Because the past-the-end bit in in_use_p is always set, we
     pretend there is one additional object.  */
  num_objects = FUNC2 (p) + 1;

  /* Reset the free object count.  */
  p->num_free_objects = num_objects;

  /* Combine the IN_USE_P and SAVE_IN_USE_P arrays.  */
  for (i = 0;
       i < FUNC1 (FUNC0 (num_objects),
		 sizeof (*p->in_use_p));
       ++i)
    {
      unsigned long j;

      /* Something is in use if it is marked, or if it was in use in a
	 context further down the context stack.  */
      p->in_use_p[i] |= FUNC4 (p)[i];

      /* Decrement the free object count for every object allocated.  */
      for (j = p->in_use_p[i]; j; j >>= 1)
	p->num_free_objects -= (j & 1);
    }

  FUNC3 (p->num_free_objects < num_objects);
}