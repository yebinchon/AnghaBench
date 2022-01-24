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
struct TYPE_2__ {int related_pid; } ;
struct target_waitstatus {scalar_t__ kind; TYPE_1__ value; } ;
typedef  int /*<<< orphan*/  ptid_t ;

/* Variables and functions */
 scalar_t__ TARGET_WAITKIND_VFORKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct target_waitstatus*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2 (int pid, int *child_pid)
{
  struct target_waitstatus last;
  ptid_t last_ptid;

  FUNC0 (&last_ptid, &last);

  if (last.kind != TARGET_WAITKIND_VFORKED)
    return 0;

  if (FUNC1 (last_ptid) != pid)
    return 0;

  *child_pid = last.value.related_pid;
  return 1;
}