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
struct mem_region {int number; int enabled_p; struct mem_region* next; } ;

/* Variables and functions */
 struct mem_region* mem_region_chain ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static void
FUNC1 (int num)
{
  struct mem_region *m;

  for (m = mem_region_chain; m; m = m->next)
    if (m->number == num)
      {
	m->enabled_p = 1;
	return;
      }
  FUNC0 ("No memory region number %d.\n", num);
}