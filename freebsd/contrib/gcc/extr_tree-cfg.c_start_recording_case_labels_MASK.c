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
 int /*<<< orphan*/ * edge_to_cases ; 
 int /*<<< orphan*/  edge_to_cases_cleanup ; 
 int /*<<< orphan*/  edge_to_cases_eq ; 
 int /*<<< orphan*/  edge_to_cases_hash ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2 (void)
{
  FUNC0 (edge_to_cases == NULL);

  edge_to_cases = FUNC1 (37,
			       edge_to_cases_hash,
			       edge_to_cases_eq,
			       edge_to_cases_cleanup);
}