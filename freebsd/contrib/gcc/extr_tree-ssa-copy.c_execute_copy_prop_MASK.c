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
 int /*<<< orphan*/  copy_prop_visit_phi_node ; 
 int /*<<< orphan*/  copy_prop_visit_stmt ; 
 int do_store_copy_prop ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (bool store_copy_prop)
{
  do_store_copy_prop = store_copy_prop;
  FUNC1 ();
  FUNC2 (copy_prop_visit_stmt, copy_prop_visit_phi_node);
  FUNC0 ();
}