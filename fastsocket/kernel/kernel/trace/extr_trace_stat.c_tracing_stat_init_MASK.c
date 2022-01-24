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
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  stat_dir ; 
 struct dentry* FUNC2 () ; 

__attribute__((used)) static int FUNC3(void)
{
	struct dentry *d_tracing;

	d_tracing = FUNC2();

	stat_dir = FUNC0("trace_stat", d_tracing);
	if (!stat_dir)
		FUNC1("Could not create debugfs "
			   "'trace_stat' entry\n");
	return 0;
}