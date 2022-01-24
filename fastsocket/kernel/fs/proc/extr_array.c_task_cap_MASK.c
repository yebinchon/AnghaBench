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
struct task_struct {int dummy; } ;
struct seq_file {int dummy; } ;
struct cred {int /*<<< orphan*/  cap_bset; int /*<<< orphan*/  cap_effective; int /*<<< orphan*/  cap_permitted; int /*<<< orphan*/  cap_inheritable; } ;
typedef  int /*<<< orphan*/  kernel_cap_t ;

/* Variables and functions */
 struct cred* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct seq_file *m, struct task_struct *p)
{
	const struct cred *cred;
	kernel_cap_t cap_inheritable, cap_permitted, cap_effective, cap_bset;

	FUNC1();
	cred = FUNC0(p);
	cap_inheritable	= cred->cap_inheritable;
	cap_permitted	= cred->cap_permitted;
	cap_effective	= cred->cap_effective;
	cap_bset	= cred->cap_bset;
	FUNC2();

	FUNC3(m, "CapInh:\t", &cap_inheritable);
	FUNC3(m, "CapPrm:\t", &cap_permitted);
	FUNC3(m, "CapEff:\t", &cap_effective);
	FUNC3(m, "CapBnd:\t", &cap_bset);
}