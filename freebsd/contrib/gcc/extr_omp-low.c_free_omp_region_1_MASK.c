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
struct omp_region {struct omp_region* next; struct omp_region* inner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omp_region*) ; 

__attribute__((used)) static void
FUNC1 (struct omp_region *region)
{
  struct omp_region *i, *n;

  for (i = region->inner; i ; i = n)
    {
      n = i->next;
      FUNC1 (i);
    }

  FUNC0 (region);
}