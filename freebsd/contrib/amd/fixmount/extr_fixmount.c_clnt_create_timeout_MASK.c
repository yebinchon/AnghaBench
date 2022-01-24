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
typedef  int /*<<< orphan*/  voidp ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef  int /*<<< orphan*/  host_addr ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  MOUNTPROG ; 
 int /*<<< orphan*/  MOUNTVERS ; 
 int RPC_ANYSOCK ; 
 int /*<<< orphan*/  RPC_TIMEDOUT ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  before_rpc ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct sockaddr_in*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct sockaddr_in*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval,int*) ; 
 int /*<<< orphan*/  create_timeout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 struct hostent* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  localhost ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  quiet ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CLIENT *
FUNC16(char *host, struct timeval *tvp)
{
  CLIENT *clnt;
  struct sockaddr_in host_addr;
  struct hostent *hp;
#ifndef HAVE_TRANSPORT_TYPE_TLI
  int s;
#endif /* not HAVE_TRANSPORT_TYPE_TLI */

  if (FUNC13(before_rpc)) {
    if (!quiet) {
      FUNC7(stderr, "%s: ", host);
      FUNC3(RPC_TIMEDOUT);
      FUNC7(stderr, "\n");
      FUNC6(stderr);
    }
    return NULL;
  }
  FUNC14(SIGALRM, create_timeout);
  FUNC15(tvp->tv_sec * 1000000 + tvp->tv_usec, 0);

  /*
   * Get address of host
   */
  if ((hp = FUNC8(host)) == 0 && !FUNC0(host, localhost)) {
    FUNC7(stderr, "can't get address of %s\n", host);
    return NULL;
  }
  FUNC11(&host_addr, 0, sizeof(host_addr));
  /* as per POSIX, sin_len need not be set (used internally by kernel) */
  host_addr.sin_family = AF_INET;
  if (hp) {
    FUNC10((voidp) &host_addr.sin_addr, (voidp) hp->h_addr,
	    sizeof(host_addr.sin_addr));
  } else {
    /* fake "localhost" */
    host_addr.sin_addr.s_addr = FUNC9(0x7f000001);
  }

#ifdef HAVE_TRANSPORT_TYPE_TLI
  /* try TCP first (in case return data is large), then UDP */
  clnt = clnt_create(host, MOUNTPROG, MOUNTVERS, "tcp");
  if (!clnt)
    clnt = clnt_create(host, MOUNTPROG, MOUNTVERS, "udp");
#else /* not HAVE_TRANSPORT_TYPE_TLI */
  s = RPC_ANYSOCK;
  clnt = FUNC4(&host_addr, MOUNTPROG, MOUNTVERS, &s, 0, 0);
  if (!clnt) {
    /* XXX: do we need to close(s) ? */
    s = FUNC12(SOCK_DGRAM);
    clnt = FUNC5(&host_addr, MOUNTPROG, MOUNTVERS, *tvp, &s);
  }
#endif /* not HAVE_TRANSPORT_TYPE_TLI */

  if (!clnt) {
    FUNC15(0, 0);
    if (!quiet) {
      FUNC2(host);
      FUNC6(stderr);
    }
    return NULL;
  }

  FUNC15(0, 0);
  return clnt;
}