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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_hash ; 
 int /*<<< orphan*/  list_hash_eq ; 
 int /*<<< orphan*/  list_hash_table ; 

void
FUNC1 (void)
{
  list_hash_table = FUNC0 (31, list_hash, list_hash_eq, NULL);
}