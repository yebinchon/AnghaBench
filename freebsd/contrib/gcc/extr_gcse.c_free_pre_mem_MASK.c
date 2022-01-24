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
 int /*<<< orphan*/ * comp ; 
 int /*<<< orphan*/ * pre_delete_map ; 
 int /*<<< orphan*/ * pre_insert_map ; 
 int /*<<< orphan*/ * pre_optimal ; 
 int /*<<< orphan*/ * pre_redundant ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * transp ; 

__attribute__((used)) static void
FUNC1 (void)
{
  FUNC0 (transp);
  FUNC0 (comp);

  /* ANTLOC and AE_KILL are freed just after pre_lcm finishes.  */

  if (pre_optimal)
    FUNC0 (pre_optimal);
  if (pre_redundant)
    FUNC0 (pre_redundant);
  if (pre_insert_map)
    FUNC0 (pre_insert_map);
  if (pre_delete_map)
    FUNC0 (pre_delete_map);

  transp = comp = NULL;
  pre_optimal = pre_redundant = pre_insert_map = pre_delete_map = NULL;
}