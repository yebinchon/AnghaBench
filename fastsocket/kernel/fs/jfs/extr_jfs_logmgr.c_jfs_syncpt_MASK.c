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
struct jfs_log {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC1 (struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC2 (struct jfs_log*,int) ; 

void FUNC3(struct jfs_log *log, int hard_sync)
{	FUNC0(log);
	FUNC2(log, hard_sync);
	FUNC1(log);
}