#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sig; } ;
struct TYPE_5__ {TYPE_1__ value; int /*<<< orphan*/  kind; } ;
struct TYPE_6__ {TYPE_2__ status; } ;
struct inf {TYPE_3__ wait; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  TARGET_SIGNAL_KILL ; 
 int /*<<< orphan*/  TARGET_WAITKIND_SIGNALLED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

void
FUNC1 (struct inf *inf)
{
  FUNC0 ("Pid %d died with unknown exit status, using SIGKILL.", inf->pid);
  inf->wait.status.kind = TARGET_WAITKIND_SIGNALLED;
  inf->wait.status.value.sig = TARGET_SIGNAL_KILL;
}