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
struct statfs {int /*<<< orphan*/  f_mntfromname; } ;
struct in_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MNT_NOWAIT ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct statfs**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,struct in_addr) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char) ; 

int
FUNC6(char *host, struct in_addr hostaddr, char *path)
{
  struct statfs *mntbufp, *mntp;
  int nloc, i;
  char *colon;

  /* read mount table from kernel */
  nloc = FUNC2(&mntbufp, MNT_NOWAIT);
  if (nloc <= 0) {
    FUNC4("getmntinfo");
    FUNC1(1);
  }

  mntp = mntbufp;
  for (i=0; i<nloc; ++i) {
    if ((colon = FUNC5(mntp->f_mntfromname, ':'))) {
      *colon = '\0';
      if (FUNC0(colon + 1, path) &&
	  FUNC3(mntp->f_mntfromname, host, hostaddr))
	return 1;
    }
  }

  return 0;
}