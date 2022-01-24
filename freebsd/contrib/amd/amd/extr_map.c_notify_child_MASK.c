#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rv ;
typedef  int /*<<< orphan*/  au_etype ;
struct TYPE_5__ {int au_signal; int au_errno; int /*<<< orphan*/  au_etype; } ;
typedef  TYPE_1__ amq_sync_umnt ;
struct TYPE_6__ {int* am_fd; } ;
typedef  TYPE_2__ am_node ;

/* Variables and functions */
 int /*<<< orphan*/  XLOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (int,TYPE_1__*,int) ; 

void
FUNC3(am_node *mp, au_etype au_etype, int au_errno, int au_signal)
{
  amq_sync_umnt rv;
  int err;

  if (mp->am_fd[1] >= 0) {	/* we have a child process */
    rv.au_etype = au_etype;
    rv.au_signal = au_signal;
    rv.au_errno = au_errno;

    err = FUNC2(mp->am_fd[1], &rv, sizeof(rv));
    /* XXX: do something else on err? */
    if (err < sizeof(rv))
      FUNC1(XLOG_INFO, "notify_child: write returned %d instead of %d.",
	   err, (int) sizeof(rv));
    FUNC0(mp->am_fd[1]);
    mp->am_fd[1] = -1;
  }
}