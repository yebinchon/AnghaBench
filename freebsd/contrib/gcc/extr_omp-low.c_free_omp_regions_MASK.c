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
struct omp_region {struct omp_region* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omp_region*) ; 
 struct omp_region* root_omp_region ; 

void
FUNC1 (void)
{
  struct omp_region *r, *n;
  for (r = root_omp_region; r ; r = n)
    {
      n = r->next;
      FUNC0 (r);
    }
  root_omp_region = NULL;
}