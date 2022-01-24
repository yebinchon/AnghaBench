#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tomoyo_io_buffer {scalar_t__ read_avail; int read_eof; int read_step; } ;
struct tomoyo_domain_info {TYPE_1__* domainname; int /*<<< orphan*/  profile; } ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct task_struct* FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC3 (struct tomoyo_io_buffer*,char*,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tomoyo_domain_info* FUNC4 (struct task_struct*) ; 

__attribute__((used)) static int FUNC5(struct tomoyo_io_buffer *head)
{
	if (head->read_avail == 0 && !head->read_eof) {
		const int pid = head->read_step;
		struct task_struct *p;
		struct tomoyo_domain_info *domain = NULL;
		FUNC1(&tasklist_lock);
		p = FUNC0(pid);
		if (p)
			domain = FUNC4(p);
		FUNC2(&tasklist_lock);
		if (domain)
			FUNC3(head, "%d %u %s", pid, domain->profile,
					 domain->domainname->name);
		head->read_eof = true;
	}
	return 0;
}