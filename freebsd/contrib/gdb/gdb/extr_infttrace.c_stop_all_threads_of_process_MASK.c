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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  lwpid_t ;
typedef  int /*<<< orphan*/  TTRACE_ARG_TYPE ;

/* Variables and functions */
 scalar_t__ TT_NIL ; 
 int /*<<< orphan*/  TT_PROC_STOP ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2 (pid_t real_pid)
{
  int ttw_status;

  ttw_status = FUNC0 (TT_PROC_STOP,
				 (pid_t) real_pid,
				 (lwpid_t) TT_NIL,
				 (TTRACE_ARG_TYPE) TT_NIL,
				 (TTRACE_ARG_TYPE) TT_NIL,
				 TT_NIL);
  if (errno)
    FUNC1 ("ttrace stop of other threads");
}