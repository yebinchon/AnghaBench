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
 struct dentry* d_tracer ; 
 struct dentry* FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

struct dentry *FUNC3(void)
{
	static int once;

	if (d_tracer)
		return d_tracer;

	if (!FUNC1())
		return NULL;

	d_tracer = FUNC0("tracing", NULL);

	if (!d_tracer && !once) {
		once = 1;
		FUNC2("Could not create debugfs directory 'tracing'\n");
		return NULL;
	}

	return d_tracer;
}