#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  voidp ;
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_12__ {char* buf; int maxlen; int len; } ;
struct TYPE_11__ {char* buf; scalar_t__ len; scalar_t__ maxlen; } ;
struct TYPE_10__ {char* buf; int maxlen; int len; } ;
struct t_unitdata {TYPE_4__ udata; TYPE_3__ opt; TYPE_2__ addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_13__ {int rf_xid; int /*<<< orphan*/  rf_ptr; struct sockaddr_in rf_sin; int /*<<< orphan*/ * rf_fwd; int /*<<< orphan*/  rf_oldid; } ;
typedef  TYPE_5__ rpc_forward ;
typedef  int /*<<< orphan*/  opaque_t ;
typedef  int /*<<< orphan*/  fwd_fun ;
typedef  int /*<<< orphan*/  dq ;

/* Variables and functions */
 int AM_ERRNO_HOST_DOWN ; 
 int ENOBUFS ; 
 int ENOENT ; 
 scalar_t__ Finishing ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int RPC_XID_MASK ; 
#define  RPC_XID_MOUNTD 131 
#define  RPC_XID_NFSPING 130 
#define  RPC_XID_PORTMAP 129 
#define  RPC_XID_WEBNFS 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 scalar_t__ amd_state ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int errno ; 
 TYPE_5__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 TYPE_5__* FUNC5 (int) ; 
 int /*<<< orphan*/  fwd_sock ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  t_errno ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,struct t_unitdata*) ; 

int
FUNC14(int type_id, char *pkt, int len, struct sockaddr_in *fwdto, struct sockaddr_in *replyto, opaque_t cb_arg, fwd_fun *cb)
{
  rpc_forward *p;
  u_int *pkt_int;
  int error;
#ifdef HAVE_TRANSPORT_TYPE_TLI
  struct t_unitdata ud;
#endif /* HAVE_TRANSPORT_TYPE_TLI */

  if ((int) amd_state >= (int) Finishing)
    return ENOENT;

  /*
   * See if the type_id is fully specified.
   * If so, then discard any old entries
   * for this id.
   * Otherwise make sure the type_id is
   * fully qualified by allocating an id here.
   */
  switch (type_id & RPC_XID_MASK) {
  case RPC_XID_PORTMAP:
    FUNC2("Sending PORTMAP request %#x", type_id);
    break;
  case RPC_XID_MOUNTD:
    FUNC2("Sending MOUNTD request %#x", type_id);
    break;
  case RPC_XID_NFSPING:
    FUNC2("Sending NFS ping %#x", type_id);
    break;
  case RPC_XID_WEBNFS:
    FUNC2("Sending WebNFS lookup %#x", type_id);
    break;
  default:
    FUNC2("UNKNOWN RPC XID %#x", type_id);
    break;
  }

  if (type_id & ~RPC_XID_MASK) {
    p = FUNC5(type_id);
    if (p) {
      FUNC2("Discarding earlier rpc fwd handle");
      FUNC4(p);
    }
  } else {
    FUNC2("Allocating a new xid...");
    type_id = FUNC0(type_id, FUNC1());
  }

  p = FUNC3();
  if (!p)
    return ENOBUFS;

  error = 0;

  pkt_int = (u_int *) pkt;

  /*
   * Get the original packet id
   */
  p->rf_oldid = FUNC9(*pkt_int);

  /*
   * Replace with newly allocated id
   */
  p->rf_xid = type_id;
  *pkt_int = FUNC6(type_id);

  /*
   * The sendto may fail if, for example, the route
   * to a remote host is lost because an intermediate
   * gateway has gone down.  Important to fill in the
   * rest of "p" otherwise nasty things happen later...
   */
#ifdef DEBUG
  {
    char dq[20];
    if (p && fwdto)
      dlog("Sending packet id %#x to %s:%d",
	   p->rf_xid,
	   inet_dquad(dq, sizeof(dq), fwdto->sin_addr.s_addr),
	   ntohs(fwdto->sin_port));
  }
#endif /* DEBUG */

  /* if NULL, remote server probably down */
  if (!fwdto) {
    error = AM_ERRNO_HOST_DOWN;
    goto out;
  }

#ifdef HAVE_TRANSPORT_TYPE_TLI
  ud.addr.buf = (char *) fwdto;
  if (fwdto)			/* if NULL, set sizes to zero */
    ud.addr.maxlen = ud.addr.len = sizeof(struct sockaddr_in);
  else
    ud.addr.maxlen = ud.addr.len = 0;
  ud.opt.buf = (char *) NULL;
  ud.opt.maxlen = ud.opt.len = 0;
  ud.udata.buf = pkt;
  ud.udata.maxlen = ud.udata.len = len;
  if (t_sndudata(fwd_sock, &ud) < 0) {
    plog(XLOG_ERROR,"fwd_packet failed: t_errno=%d, errno=%d",t_errno,errno);
    error = errno;
  }
#else /* not HAVE_TRANSPORT_TYPE_TLI */
  if (FUNC12(fwd_sock, (char *) pkt, len, 0,
	     (struct sockaddr *) fwdto, sizeof(*fwdto)) < 0)
    error = errno;
#endif /* not HAVE_TRANSPORT_TYPE_TLI */

  /*
   * Save callback function and return address
   */
out:
  p->rf_fwd = cb;
  if (replyto)
    p->rf_sin = *replyto;
  else
    FUNC8((voidp) &p->rf_sin, 0, sizeof(p->rf_sin));
  p->rf_ptr = cb_arg;

  return error;
}