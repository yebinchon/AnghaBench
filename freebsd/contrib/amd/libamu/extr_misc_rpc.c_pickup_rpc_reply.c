
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int voidp ;
struct TYPE_14__ {scalar_t__ oa_base; } ;
struct TYPE_10__ {int proc; int where; } ;
struct TYPE_12__ {TYPE_8__ ar_verf; TYPE_1__ ar_results; } ;
struct TYPE_11__ {scalar_t__ rp_stat; } ;
struct rpc_msg {TYPE_3__ acpted_rply; TYPE_2__ rm_reply; } ;
struct rpc_err {scalar_t__ re_status; } ;
typedef int reply_xdr ;
typedef int reply_msg ;
typedef int XDRPROC_T_TYPE ;
struct TYPE_13__ {int x_op; } ;
typedef TYPE_4__ XDR ;


 int EIO ;
 scalar_t__ MSG_ACCEPTED ;
 scalar_t__ RPC_SUCCESS ;
 int XDR_DECODE ;
 int XDR_FREE ;
 int _seterr_reply (struct rpc_msg*,struct rpc_err*) ;
 int memset (int ,int ,int) ;
 int xdr_destroy (TYPE_4__*) ;
 int xdr_opaque_auth (TYPE_4__*,TYPE_8__*) ;
 int xdr_replymsg (TYPE_4__*,struct rpc_msg*) ;
 int xdrmem_create (TYPE_4__*,int ,int,int ) ;

int
pickup_rpc_reply(voidp pkt, int len, voidp where, XDRPROC_T_TYPE where_xdr)
{
  XDR reply_xdr;
  int ok;
  struct rpc_err err;
  struct rpc_msg reply_msg;
  int error = 0;


  memset((voidp) &reply_msg, 0, sizeof(reply_msg));
  memset((voidp) &reply_xdr, 0, sizeof(reply_xdr));

  reply_msg.acpted_rply.ar_results.where = where;
  reply_msg.acpted_rply.ar_results.proc = where_xdr;

  xdrmem_create(&reply_xdr, pkt, len, XDR_DECODE);

  ok = xdr_replymsg(&reply_xdr, &reply_msg);
  if (!ok) {
    error = EIO;
    goto drop;
  }
  _seterr_reply(&reply_msg, &err);
  if (err.re_status != RPC_SUCCESS) {
    error = EIO;
    goto drop;
  }

drop:
  if (reply_msg.rm_reply.rp_stat == MSG_ACCEPTED &&
      reply_msg.acpted_rply.ar_verf.oa_base) {
    reply_xdr.x_op = XDR_FREE;
    (void) xdr_opaque_auth(&reply_xdr,
      &reply_msg.acpted_rply.ar_verf);
  }
  xdr_destroy(&reply_xdr);

  return error;
}
