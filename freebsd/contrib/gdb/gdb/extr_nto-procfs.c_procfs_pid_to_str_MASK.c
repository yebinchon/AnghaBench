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
struct tidinfo {int state; } ;
typedef  int /*<<< orphan*/  ptid_t ;

/* Variables and functions */
 struct tidinfo* FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,char*,int) ; 

char *
FUNC4 (ptid_t ptid)
{
  static char buf[1024];
  int pid, tid, n;
  struct tidinfo *tip;

  pid = FUNC1 (ptid);
  tid = FUNC2 (ptid);

  n = FUNC3 (buf, 1023, "process %d", pid);

#if 0				/* NYI */
  tip = procfs_thread_info (pid, tid);
  if (tip != NULL)
    snprintf (&buf[n], 1023, " (state = 0x%02x)", tip->state);
#endif

  return buf;
}