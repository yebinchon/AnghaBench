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
 int /*<<< orphan*/ * cfg_hooks ; 
 int /*<<< orphan*/  tree_cfg_hooks ; 

int
FUNC0 (void)
{
  return cfg_hooks == &tree_cfg_hooks ? 1 : 0;
}