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
struct mem_region {int number; struct mem_region* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mem_region*) ; 
 struct mem_region* mem_region_chain ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void
FUNC2 (int num)
{
  struct mem_region *m1, *m;

  if (!mem_region_chain)
    {
      FUNC1 ("No memory region number %d.\n", num);
      return;
    }

  if (mem_region_chain->number == num)
    {
      m1 = mem_region_chain;
      mem_region_chain = m1->next;
      FUNC0 (m1);
    }
  else
    for (m = mem_region_chain; m->next; m = m->next)
      {
	if (m->next->number == num)
	  {
	    m1 = m->next;
	    m->next = m1->next;
	    FUNC0 (m1);
	    break;
	  }
      }
}