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
struct pointer_set_t {size_t n_slots; void** slots; int /*<<< orphan*/  log_slots; } ;

/* Variables and functions */
 size_t FUNC0 (void*,size_t,int /*<<< orphan*/ ) ; 

int
FUNC1 (struct pointer_set_t *pset, void *p)
{
  size_t n = FUNC0 (p, pset->n_slots, pset->log_slots);

  while (true)
    {
      if (pset->slots[n] == p)
       return 1;
      else if (pset->slots[n] == 0)
       return 0;
      else
       {
         ++n;
         if (n == pset->n_slots)
           n = 0;
       }
    }
}