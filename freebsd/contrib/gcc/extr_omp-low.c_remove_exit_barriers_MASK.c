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
struct omp_region {scalar_t__ type; struct omp_region* next; struct omp_region* inner; } ;

/* Variables and functions */
 scalar_t__ OMP_PARALLEL ; 
 int /*<<< orphan*/  FUNC0 (struct omp_region*) ; 

__attribute__((used)) static void
FUNC1 (struct omp_region *region)
{
  if (region->type == OMP_PARALLEL)
    FUNC0 (region);

  if (region->inner)
    {
      region = region->inner;
      FUNC1 (region);
      while (region->next)
	{
	  region = region->next;
	  FUNC1 (region);
	}
    }
}