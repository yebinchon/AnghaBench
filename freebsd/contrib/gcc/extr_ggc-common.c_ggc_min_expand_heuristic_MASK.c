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

/* Variables and functions */
 double FUNC0 (double,int) ; 
 double FUNC1 (double) ; 
 double FUNC2 () ; 

int
FUNC3 (void)
{
  double min_expand = FUNC2();

  /* Adjust for rlimits.  */
  min_expand = FUNC1 (min_expand);

  /* The heuristic is a percentage equal to 30% + 70%*(RAM/1GB), yielding
  APPLE LOCAL retune gc params 6124839
     a lower bound of 30% and an upper bound of 150% (when RAM >= 1.7GB).  */
  min_expand /= 1024*1024*1024;
  min_expand *= 70;
  /* APPLE LOCAL retune gc params 6124839 */
  min_expand = FUNC0 (min_expand, 120);
  min_expand += 30;

  return min_expand;
}