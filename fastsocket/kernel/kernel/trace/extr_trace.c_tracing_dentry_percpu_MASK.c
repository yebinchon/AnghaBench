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
 struct dentry* d_percpu ; 
 struct dentry* FUNC0 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct dentry* FUNC2 () ; 

struct dentry *FUNC3(void)
{
	static int once;
	struct dentry *d_tracer;

	if (d_percpu)
		return d_percpu;

	d_tracer = FUNC2();

	if (!d_tracer)
		return NULL;

	d_percpu = FUNC0("per_cpu", d_tracer);

	if (!d_percpu && !once) {
		once = 1;
		FUNC1("Could not create debugfs directory 'per_cpu'\n");
		return NULL;
	}

	return d_percpu;
}