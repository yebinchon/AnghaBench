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
struct task_struct {char* comm; } ;
struct seq_file {int dummy; } ;
struct gfs2_holder {scalar_t__ gh_owner_pid; int /*<<< orphan*/  gh_error; int /*<<< orphan*/  gh_iflags; int /*<<< orphan*/  gh_flags; int /*<<< orphan*/  gh_state; int /*<<< orphan*/  gh_ip; } ;

/* Variables and functions */
 int KSYM_SYMBOL_LEN ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 struct task_struct* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct seq_file *seq, const struct gfs2_holder *gh)
{
	struct task_struct *gh_owner = NULL;
	char buffer[KSYM_SYMBOL_LEN];
	char flags_buf[32];

	FUNC4(buffer, gh->gh_ip);
	if (gh->gh_owner_pid)
		gh_owner = FUNC3(gh->gh_owner_pid, PIDTYPE_PID);
	FUNC0(seq, " H: s:%s f:%s e:%d p:%ld [%s] %s\n",
		  FUNC5(gh->gh_state),
		  FUNC1(flags_buf, gh->gh_flags, gh->gh_iflags),
		  gh->gh_error, 
		  gh->gh_owner_pid ? (long)FUNC2(gh->gh_owner_pid) : -1,
		  gh_owner ? gh_owner->comm : "(ended)", buffer);
	return 0;
}