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

/* Variables and functions */
 char* FUNC0 () ; 
 int /*<<< orphan*/  dbg_opt ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  xlog_opt ; 

__attribute__((used)) static void
FUNC4(void)
{
  FUNC2(stderr,
	  "Usage: %s [-Cfhnpv] [-a altdir] [-c cache-interval] [-g group]\n",
	  FUNC0());
  FUNC2(stderr, "\t[-i interval] [-l logfile] [-o mntopts] [-P passwdfile]\n");
  FUNC3('x', xlog_opt);
#ifdef DEBUG
  show_opts('D', dbg_opt);
#endif /* DEBUG */
  FUNC2(stderr, "\t[dir_name [subdir]]\n");
  FUNC1(2);
}