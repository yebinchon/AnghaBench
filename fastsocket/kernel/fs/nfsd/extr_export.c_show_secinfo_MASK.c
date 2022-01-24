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
struct svc_export {int ex_nflavors; int /*<<< orphan*/  ex_flags; struct exp_flavor_info* ex_flavors; } ;
struct seq_file {int dummy; } ;
struct exp_flavor_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int) ; 
 int FUNC2 (struct seq_file*,struct exp_flavor_info**,struct exp_flavor_info*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *m, struct svc_export *exp)
{
	struct exp_flavor_info *f;
	struct exp_flavor_info *end = exp->ex_flavors + exp->ex_nflavors;
	int flags;

	if (exp->ex_nflavors == 0)
		return;
	f = exp->ex_flavors;
	flags = FUNC2(m, &f, end);
	if (!FUNC0(flags, exp->ex_flags))
		FUNC1(m, flags);
	while (f != end) {
		flags = FUNC2(m, &f, end);
		FUNC1(m, flags);
	}
}