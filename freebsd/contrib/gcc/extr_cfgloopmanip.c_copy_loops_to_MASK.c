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
struct loops {int dummy; } ;
struct loop {int dummy; } ;

/* Variables and functions */
 struct loop* FUNC0 (struct loops*,struct loop*,struct loop*) ; 
 int /*<<< orphan*/  FUNC1 (struct loops*,struct loop*,struct loop*) ; 

__attribute__((used)) static void
FUNC2 (struct loops *loops, struct loop **copied_loops, int n, struct loop *target)
{
  struct loop *aloop;
  int i;

  for (i = 0; i < n; i++)
    {
      aloop = FUNC0 (loops, copied_loops[i], target);
      FUNC1 (loops, copied_loops[i], aloop);
    }
}