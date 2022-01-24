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
struct tracer_opt {int /*<<< orphan*/  name; } ;
struct tracer_flags {int dummy; } ;
struct trace_option_dentry {int /*<<< orphan*/  entry; struct tracer_opt* opt; struct tracer_flags* flags; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct dentry*,struct trace_option_dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace_options_fops ; 
 struct dentry* FUNC1 () ; 

__attribute__((used)) static void
FUNC2(struct trace_option_dentry *topt,
			 struct tracer_flags *flags,
			 struct tracer_opt *opt)
{
	struct dentry *t_options;

	t_options = FUNC1();
	if (!t_options)
		return;

	topt->flags = flags;
	topt->opt = opt;

	topt->entry = FUNC0(opt->name, 0644, t_options, topt,
				    &trace_options_fops);

}