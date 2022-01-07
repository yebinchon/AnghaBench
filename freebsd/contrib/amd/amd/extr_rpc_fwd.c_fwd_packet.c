
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int voidp ;
typedef int u_int ;
struct TYPE_12__ {char* buf; int maxlen; int len; } ;
struct TYPE_11__ {char* buf; scalar_t__ len; scalar_t__ maxlen; } ;
struct TYPE_10__ {char* buf; int maxlen; int len; } ;
struct t_unitdata {TYPE_4__ udata; TYPE_3__ opt; TYPE_2__ addr; } ;
struct TYPE_9__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_13__ {int rf_xid; int rf_ptr; struct sockaddr_in rf_sin; int * rf_fwd; int rf_oldid; } ;
typedef TYPE_5__ rpc_forward ;
typedef int opaque_t ;
typedef int fwd_fun ;
typedef int dq ;


 int AM_ERRNO_HOST_DOWN ;
 int ENOBUFS ;
 int ENOENT ;
 scalar_t__ Finishing ;
 int MK_RPC_XID (int,int ) ;
 int RPC_XID_MASK ;




 int XID_ALLOC () ;
 int XLOG_ERROR ;
 scalar_t__ amd_state ;
 int dlog (char*,...) ;
 int errno ;
 TYPE_5__* fwd_alloc () ;
 int fwd_free (TYPE_5__*) ;
 TYPE_5__* fwd_locate (int) ;
 int fwd_sock ;
 int htonl (int) ;
 int inet_dquad (char*,int,int ) ;
 int memset (int ,int ,int) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int plog (int ,char*,int ,int) ;
 scalar_t__ sendto (int ,char*,int,int ,struct sockaddr*,int) ;
 int t_errno ;
 scalar_t__ t_sndudata (int ,struct t_unitdata*) ;

int
fwd_packet(int type_id, char *pkt, int len, struct sockaddr_in *fwdto, struct sockaddr_in *replyto, opaque_t cb_arg, fwd_fun *cb)
{
  rpc_forward *p;
  u_int *pkt_int;
  int error;




  if ((int) amd_state >= (int) Finishing)
    return ENOENT;
  switch (type_id & RPC_XID_MASK) {
  case 129:
    dlog("Sending PORTMAP request %#x", type_id);
    break;
  case 131:
    dlog("Sending MOUNTD request %#x", type_id);
    break;
  case 130:
    dlog("Sending NFS ping %#x", type_id);
    break;
  case 128:
    dlog("Sending WebNFS lookup %#x", type_id);
    break;
  default:
    dlog("UNKNOWN RPC XID %#x", type_id);
    break;
  }

  if (type_id & ~RPC_XID_MASK) {
    p = fwd_locate(type_id);
    if (p) {
      dlog("Discarding earlier rpc fwd handle");
      fwd_free(p);
    }
  } else {
    dlog("Allocating a new xid...");
    type_id = MK_RPC_XID(type_id, XID_ALLOC());
  }

  p = fwd_alloc();
  if (!p)
    return ENOBUFS;

  error = 0;

  pkt_int = (u_int *) pkt;




  p->rf_oldid = ntohl(*pkt_int);




  p->rf_xid = type_id;
  *pkt_int = htonl(type_id);
  if (!fwdto) {
    error = AM_ERRNO_HOST_DOWN;
    goto out;
  }
  if (sendto(fwd_sock, (char *) pkt, len, 0,
      (struct sockaddr *) fwdto, sizeof(*fwdto)) < 0)
    error = errno;





out:
  p->rf_fwd = cb;
  if (replyto)
    p->rf_sin = *replyto;
  else
    memset((voidp) &p->rf_sin, 0, sizeof(p->rf_sin));
  p->rf_ptr = cb_arg;

  return error;
}
