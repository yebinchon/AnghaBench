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
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_long ;
struct timeval {int dummy; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  MOUNTPROG ; 
 int RPC_ANYSOCK ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct sockaddr_in*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct sockaddr_in*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_in*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

CLIENT *
FUNC10(char *unused_host, struct sockaddr_in *sin, struct timeval *tv, int *sock, u_long mnt_version)
{
  CLIENT *client;

  /*
   * First try a TCP socket
   */
  if ((*sock = FUNC9(AF_INET, SOCK_STREAM, IPPROTO_TCP)) > 0) {
    /*
     * Bind to a privileged port
     */
    if (FUNC0(*sock, (u_short *) NULL) < 0)
      FUNC7(XLOG_ERROR, "can't bind privileged port (socket)");

    /*
     * Find mountd port to connect to.
     * Connect to mountd.
     * Create a tcp client.
     */
    if ((sin->sin_port = FUNC6(FUNC8(sin, MOUNTPROG, mnt_version, IPPROTO_TCP))) != 0) {
      if (FUNC4(*sock, (struct sockaddr *) sin, sizeof(*sin)) >= 0
	  && ((client = FUNC1(sin, MOUNTPROG, mnt_version, sock, 0, 0)) != NULL))
	return client;
    }
    /*
     * Failed so close socket
     */
    (void) FUNC3(*sock);
  }				/* tcp socket opened */
  /* TCP failed so try UDP */
  if ((*sock = FUNC9(AF_INET, SOCK_DGRAM, 0)) < 0) {
    FUNC7(XLOG_ERROR, "Can't create socket to connect to mountd: %m");
    *sock = RPC_ANYSOCK;
    return NULL;
  }
  /*
   * Bind to a privileged port
   */
  if (FUNC0(*sock, (u_short *) NULL) < 0)
    FUNC7(XLOG_ERROR, "can't bind privileged port");

  /*
   * Zero out the port - make sure we recompute
   */
  sin->sin_port = 0;

  /*
   * Make a UDP client
   */
  if ((client = FUNC2(sin, MOUNTPROG, mnt_version, *tv, sock)) == NULL) {
    (void) FUNC3(*sock);
    *sock = RPC_ANYSOCK;
    return NULL;
  }
  FUNC5("get_mount_client: Using udp, port %d", sin->sin_port);
  return client;
}