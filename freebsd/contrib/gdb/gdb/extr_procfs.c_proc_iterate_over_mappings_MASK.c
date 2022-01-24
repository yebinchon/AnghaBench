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
typedef  int /*<<< orphan*/  procinfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int FUNC2 (int /*<<< orphan*/ *,int (*) (int,CORE_ADDR),int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  solib_mappings_callback ; 

int
FUNC3 (int (*func) (int, CORE_ADDR))
{
  procinfo *pi = FUNC1 (FUNC0 (inferior_ptid), 0);

  return FUNC2 (pi, func, pi, solib_mappings_callback);
}