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
 struct dentry* FUNC0 (char const*,int,struct dentry*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace_options_core_fops ; 
 struct dentry* FUNC1 () ; 

__attribute__((used)) static struct dentry *
FUNC2(const char *option, long index)
{
	struct dentry *t_options;

	t_options = FUNC1();
	if (!t_options)
		return NULL;

	return FUNC0(option, 0644, t_options, (void *)index,
				    &trace_options_core_fops);
}