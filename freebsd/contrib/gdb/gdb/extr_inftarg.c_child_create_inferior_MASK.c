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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  TARGET_SIGNAL_0 ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pre_fork_inferior ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptrace_him ; 
 int /*<<< orphan*/  ptrace_me ; 

__attribute__((used)) static void
FUNC2 (char *exec_file, char *allargs, char **env)
{
#ifdef HPUXHPPA
  fork_inferior (exec_file, allargs, env, ptrace_me, ptrace_him, pre_fork_inferior, NULL);
#else
  FUNC0 (exec_file, allargs, env, ptrace_me, ptrace_him, NULL, NULL);
#endif
  /* We are at the first instruction we care about.  */
  /* Pedal to the metal... */
  FUNC1 ((CORE_ADDR) -1, TARGET_SIGNAL_0, 0);
}