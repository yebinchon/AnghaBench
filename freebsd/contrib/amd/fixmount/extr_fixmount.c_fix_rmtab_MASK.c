#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct hostent {int /*<<< orphan*/  h_addr; } ;
typedef  TYPE_1__* mountlist ;
typedef  int /*<<< orphan*/  hostaddr ;
struct TYPE_4__ {int /*<<< orphan*/  ml_directory; int /*<<< orphan*/  ml_hostname; struct TYPE_4__* ml_next; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  INADDR_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct in_addr,int /*<<< orphan*/ ) ; 
 struct hostent* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct in_addr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  thisaddr ; 
 int /*<<< orphan*/  thishost ; 

void
FUNC5(CLIENT *client, char *host, mountlist mp, int fixit, int force)
{
  mountlist p;
  struct hostent *he;
  struct in_addr hostaddr;

  /*
   * Obtain remote address for comparisons
   */
  if ((he = FUNC1(host))) {
    FUNC3(&hostaddr, he->h_addr, sizeof(hostaddr));
  } else {
    hostaddr.s_addr = INADDR_NONE;
  }

  for (p = mp; p; p = p->ml_next) {
    if (FUNC2(p->ml_hostname, thishost, thisaddr)) {
      if (force || !FUNC0(host, hostaddr, p->ml_directory))
	FUNC4(client, host, p, fixit);
    }
  }
}