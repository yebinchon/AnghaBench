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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ flag_tree_store_copy_prop ; 

__attribute__((used)) static unsigned int
FUNC1 (void)
{
  /* If STORE-COPY-PROP is not enabled, we just run regular COPY-PROP.  */
  FUNC0 (flag_tree_store_copy_prop != 0);
  return 0;
}