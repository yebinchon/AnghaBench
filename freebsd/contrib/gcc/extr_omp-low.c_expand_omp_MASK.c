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
struct omp_region {int type; struct omp_region* next; struct omp_region* inner; } ;

/* Variables and functions */
#define  OMP_CRITICAL 135 
#define  OMP_FOR 134 
#define  OMP_MASTER 133 
#define  OMP_ORDERED 132 
#define  OMP_PARALLEL 131 
#define  OMP_SECTION 130 
#define  OMP_SECTIONS 129 
#define  OMP_SINGLE 128 
 int /*<<< orphan*/  FUNC0 (struct omp_region*) ; 
 int /*<<< orphan*/  FUNC1 (struct omp_region*) ; 
 int /*<<< orphan*/  FUNC2 (struct omp_region*) ; 
 int /*<<< orphan*/  FUNC3 (struct omp_region*) ; 
 int /*<<< orphan*/  FUNC4 (struct omp_region*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6 (struct omp_region *region)
{
  while (region)
    {
      if (region->inner)
	FUNC6 (region->inner);

      switch (region->type)
	{
	case OMP_PARALLEL:
	  FUNC1 (region);
	  break;

	case OMP_FOR:
	  FUNC0 (region);
	  break;

	case OMP_SECTIONS:
	  FUNC2 (region);
	  break;

	case OMP_SECTION:
	  /* Individual omp sections are handled together with their
	     parent OMP_SECTIONS region.  */
	  break;

	case OMP_SINGLE:
	  FUNC3 (region);
	  break;

	case OMP_MASTER:
	case OMP_ORDERED:
	case OMP_CRITICAL:
	  FUNC4 (region);
	  break;

	default:
	  FUNC5 ();
	}

      region = region->next;
    }
}