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
typedef  void* u32 ;
struct rpc_rqst {int dummy; } ;
struct file_lock {void* fl_end; void* fl_start; int /*<<< orphan*/  fl_type; int /*<<< orphan*/  fl_flags; scalar_t__ fl_pid; } ;
struct TYPE_2__ {int /*<<< orphan*/  oh; void* svid; struct file_lock fl; } ;
struct nlm_res {scalar_t__ status; TYPE_1__ lock; int /*<<< orphan*/  cookie; } ;
typedef  scalar_t__ s32 ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FL_POSIX ; 
 int /*<<< orphan*/  F_RDLCK ; 
 int /*<<< orphan*/  F_WRLCK ; 
 void* OFFSET_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ nlm_lck_denied ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct rpc_rqst *req, __be32 *p, struct nlm_res *resp)
{
	if (!(p = FUNC2(p, &resp->cookie)))
		return -EIO;
	resp->status = *p++;
	if (resp->status == nlm_lck_denied) {
		struct file_lock	*fl = &resp->lock.fl;
		u32			excl;
		s32			start, len, end;

		FUNC1(&resp->lock, 0, sizeof(resp->lock));
		FUNC0(fl);
		excl = FUNC4(*p++);
		resp->lock.svid = FUNC4(*p++);
		fl->fl_pid = (pid_t)resp->lock.svid;
		if (!(p = FUNC3(p, &resp->lock.oh)))
			return -EIO;

		fl->fl_flags = FL_POSIX;
		fl->fl_type  = excl? F_WRLCK : F_RDLCK;
		start = FUNC4(*p++);
		len = FUNC4(*p++);
		end = start + len - 1;

		fl->fl_start = FUNC5(start);
		if (len == 0 || end < 0)
			fl->fl_end = OFFSET_MAX;
		else
			fl->fl_end = FUNC5(end);
	}
	return 0;
}