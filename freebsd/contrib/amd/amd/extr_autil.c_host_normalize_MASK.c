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
struct hostent {scalar_t__ h_addrtype; scalar_t__ h_name; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int CFM_DOMAIN_STRIP ; 
 int CFM_NORMALIZE_HOSTNAMES ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct hostent* FUNC2 (char*) ; 
 TYPE_1__ gopt ; 
 int /*<<< orphan*/  hostd ; 
 char* FUNC3 (char*,char*) ; 

void
FUNC4(char **chp)
{
  /*
   * Normalize hosts is used to resolve host name aliases
   * and replace them with the standard-form name.
   * Invoked with "-n" command line option.
   */
  if (gopt.flags & CFM_NORMALIZE_HOSTNAMES) {
    struct hostent *hp;
    hp = FUNC2(*chp);
    if (hp && hp->h_addrtype == AF_INET) {
      FUNC0("Hostname %s normalized to %s", *chp, hp->h_name);
      *chp = FUNC3(*chp, (char *) hp->h_name);
    }
  }
  if (gopt.flags & CFM_DOMAIN_STRIP) {
    FUNC1(*chp, hostd);
  }
}