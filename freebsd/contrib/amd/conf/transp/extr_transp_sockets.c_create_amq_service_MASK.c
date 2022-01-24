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
typedef  int u_short ;
struct netconfig {int dummy; } ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AMQ_SIZE ; 
 int RPC_MAXDATASIZE ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SVCSET_CONNMAXREC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  XLOG_FATAL ; 
 scalar_t__ FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(int *udp_soAMQp,
		   SVCXPRT **udp_amqpp,
		   struct netconfig **dummy1,
		   int *tcp_soAMQp,
		   SVCXPRT **tcp_amqpp,
		   struct netconfig **dummy2,
		   u_short preferred_amq_port)
{
  /* first create TCP service */
  if (tcp_soAMQp) {
    *tcp_soAMQp = FUNC3(AF_INET, SOCK_STREAM, 0);
    if (*tcp_soAMQp < 0) {
      FUNC2(XLOG_FATAL, "cannot create tcp socket for amq service: %m");
      return 1;
    }

    /* next, bind to a specific (TCP) port if asked for */
    if (preferred_amq_port > 0) {
      /*
       * Note: if &preferred_amq_port is non-null and is greater than 0,
       * then the pointer will not be modified.  We don't want it to be
       * modified because it was passed down to create_amq_service as a
       * non-pointer (a variable on the stack, not to be modified!)
       */
      if (FUNC1(*tcp_soAMQp, &preferred_amq_port) < 0) {
	FUNC2(XLOG_FATAL, "can't bind amq service to requested TCP port %d: %m)", preferred_amq_port);
	return 1;
      }
    }

    /* now create RPC service handle for amq */
    if (tcp_amqpp &&
	(*tcp_amqpp = FUNC4(*tcp_soAMQp, AMQ_SIZE, AMQ_SIZE)) == NULL) {
      FUNC2(XLOG_FATAL, "cannot create tcp service for amq: soAMQp=%d", *tcp_soAMQp);
      return 1;
    }

#ifdef SVCSET_CONNMAXREC
    /*
     * This is *BSD at its best.
     * They just had to do things differently than everyone else
     * so they fixed a library DoS issue by forcing client-side changes...
     */
# ifndef RPC_MAXDATASIZE
#  define RPC_MAXDATASIZE 9000
# endif /* not RPC_MAXDATASIZE */
    if (tcp_amqpp) {
      int maxrec = RPC_MAXDATASIZE;
      SVC_CONTROL(*tcp_amqpp, SVCSET_CONNMAXREC, &maxrec);
    }
#endif /* not SVCSET_CONNMAXREC */
  }

  /* next create UDP service */
  if (udp_soAMQp) {
    *udp_soAMQp = FUNC3(AF_INET, SOCK_DGRAM, 0);
    if (*udp_soAMQp < 0) {
      FUNC2(XLOG_FATAL, "cannot create udp socket for amq service: %m");
      return 1;
    }

    /* next, bind to a specific (UDP) port if asked for */
    if (preferred_amq_port > 0) {
      /*
       * Note: see comment about using &preferred_amq_port above in this
       * function.
       */
      if (FUNC1(*udp_soAMQp, &preferred_amq_port) < 0) {
	FUNC2(XLOG_FATAL, "can't bind amq service to requested UDP port %d: %m)", preferred_amq_port);
	return 1;
      }
    }

    /* now create RPC service handle for amq */
    if (udp_amqpp &&
	(*udp_amqpp = FUNC5(*udp_soAMQp, AMQ_SIZE, AMQ_SIZE)) == NULL) {
      FUNC2(XLOG_FATAL, "cannot create udp service for amq: soAMQp=%d", *udp_soAMQp);
      return 1;
    }
  }

  return 0;			/* all is well */
}