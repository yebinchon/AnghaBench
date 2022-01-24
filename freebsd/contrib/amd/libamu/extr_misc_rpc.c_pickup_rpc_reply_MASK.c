#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  voidp ;
struct TYPE_14__ {scalar_t__ oa_base; } ;
struct TYPE_10__ {int /*<<< orphan*/  proc; int /*<<< orphan*/  where; } ;
struct TYPE_12__ {TYPE_8__ ar_verf; TYPE_1__ ar_results; } ;
struct TYPE_11__ {scalar_t__ rp_stat; } ;
struct rpc_msg {TYPE_3__ acpted_rply; TYPE_2__ rm_reply; } ;
struct rpc_err {scalar_t__ re_status; } ;
typedef  int /*<<< orphan*/  reply_xdr ;
typedef  int /*<<< orphan*/  reply_msg ;
typedef  int /*<<< orphan*/  XDRPROC_T_TYPE ;
struct TYPE_13__ {int /*<<< orphan*/  x_op; } ;
typedef  TYPE_4__ XDR ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ MSG_ACCEPTED ; 
 scalar_t__ RPC_SUCCESS ; 
 int /*<<< orphan*/  XDR_DECODE ; 
 int /*<<< orphan*/  XDR_FREE ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_msg*,struct rpc_err*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_8__*) ; 
 int FUNC4 (TYPE_4__*,struct rpc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC6(voidp pkt, int len, voidp where, XDRPROC_T_TYPE where_xdr)
{
  XDR reply_xdr;
  int ok;
  struct rpc_err err;
  struct rpc_msg reply_msg;
  int error = 0;

  /* memset((voidp) &err, 0, sizeof(err)); */
  FUNC1((voidp) &reply_msg, 0, sizeof(reply_msg));
  FUNC1((voidp) &reply_xdr, 0, sizeof(reply_xdr));

  reply_msg.acpted_rply.ar_results.where = where;
  reply_msg.acpted_rply.ar_results.proc = where_xdr;

  FUNC5(&reply_xdr, pkt, len, XDR_DECODE);

  ok = FUNC4(&reply_xdr, &reply_msg);
  if (!ok) {
    error = EIO;
    goto drop;
  }
  FUNC0(&reply_msg, &err);
  if (err.re_status != RPC_SUCCESS) {
    error = EIO;
    goto drop;
  }

drop:
  if (reply_msg.rm_reply.rp_stat == MSG_ACCEPTED &&
      reply_msg.acpted_rply.ar_verf.oa_base) {
    reply_xdr.x_op = XDR_FREE;
    (void) FUNC3(&reply_xdr,
			   &reply_msg.acpted_rply.ar_verf);
  }
  FUNC2(&reply_xdr);

  return error;
}