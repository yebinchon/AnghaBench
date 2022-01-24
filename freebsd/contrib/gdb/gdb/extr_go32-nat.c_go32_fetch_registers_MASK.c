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
 int FP0_REGNUM ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  npx ; 

__attribute__((used)) static void
FUNC2 (int regno)
{
  if (regno >= 0)
    FUNC0 (regno);
  else
    {
      for (regno = 0; regno < FP0_REGNUM; regno++)
	FUNC0 (regno);
      FUNC1 (current_regcache, -1, &npx);
    }
}