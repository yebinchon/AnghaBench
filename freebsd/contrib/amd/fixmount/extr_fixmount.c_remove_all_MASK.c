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
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  int /*<<< orphan*/  XDRPROC_T_TYPE ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  CALL_TIMEOUT ; 
 int /*<<< orphan*/  MOUNTPROC_UMNTALL ; 
 int RPC_SUCCESS ; 
 int RPC_SYSTEMERROR ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,struct timeval) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ xdr_void ; 

int
FUNC5(CLIENT *client, char *host)
{
  enum clnt_stat estat;
  struct timeval tv;

  FUNC4("%s: removing ALL\n", host);
  FUNC2(stdout);

  tv.tv_sec = CALL_TIMEOUT;
  tv.tv_usec = 0;

  if ((estat = FUNC0(client,
			 MOUNTPROC_UMNTALL,
			 (XDRPROC_T_TYPE) xdr_void,
			 (char *) NULL,
			 (XDRPROC_T_TYPE) xdr_void,
			 (char *) NULL,
			 tv)) != RPC_SUCCESS) {
    /*
     * RPC_SYSTEMERROR is returned even if all went well
     */
    if (estat != RPC_SYSTEMERROR) {
      FUNC3(stderr, "%s MOUNTPROC_UMNTALL: ", host);
      FUNC1(estat);
      FUNC2(stderr);
      return -1;
    }
  }

  return 0;
}