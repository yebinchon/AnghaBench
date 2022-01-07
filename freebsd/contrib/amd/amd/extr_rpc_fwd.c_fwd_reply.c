
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int voidp ;
typedef int u_int ;
struct TYPE_9__ {char* buf; int maxlen; int len; } ;
struct TYPE_8__ {char* buf; int len; int maxlen; } ;
struct TYPE_7__ {char* buf; int maxlen; int len; } ;
struct t_unitdata {TYPE_3__ udata; TYPE_2__ opt; TYPE_1__ addr; } ;
struct sockaddr_in {scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int src_addr ;
struct TYPE_10__ {int rf_ptr; int rf_sin; int (* rf_fwd ) (int ,int,struct sockaddr_in*,int *,int ,int ) ;int rf_oldid; } ;
typedef TYPE_4__ rpc_forward ;
typedef int RECVFROM_FROMLEN_TYPE ;


 scalar_t__ AF_INET ;
 scalar_t__ EINTR ;
 scalar_t__ Finishing ;
 int MAX_PACKET_SIZE ;
 int RPC_XID_MASK ;




 scalar_t__ TLOOK ;
 int TRUE ;
 int XLOG_ERROR ;
 scalar_t__ amd_state ;
 int dlog (char*,int) ;
 scalar_t__ errno ;
 int fwd_free (TYPE_4__*) ;
 TYPE_4__* fwd_locate (int) ;
 int fwd_sock ;
 int htonl (int ) ;
 int ntohl (int) ;
 int plog (int ,char*,...) ;
 int recvfrom (int ,char*,int,int ,struct sockaddr*,int*) ;
 int stub1 (int ,int,struct sockaddr_in*,int *,int ,int ) ;
 scalar_t__ t_errno ;
 int t_rcvudata (int ,struct t_unitdata*,int*) ;
 int t_rcvuderr (int ,int *) ;

void
fwd_reply(void)
{
  int len;
  u_int pkt[MAX_PACKET_SIZE / sizeof(u_int) + 1];
  u_int *pkt_int;
  u_int pkt_xid;
  int rc;
  rpc_forward *p;
  struct sockaddr_in src_addr;
  RECVFROM_FROMLEN_TYPE src_addr_len;
  len = MAX_PACKET_SIZE;




again:
  src_addr_len = sizeof(src_addr);
  rc = recvfrom(fwd_sock,
  (char *) pkt,
  len,
  0,
  (struct sockaddr *) &src_addr,
  &src_addr_len);






  if (rc < 0 || src_addr_len != sizeof(src_addr) ||
      src_addr.sin_family != AF_INET) {
    if (rc < 0 && errno == EINTR)
      goto again;
    plog(XLOG_ERROR, "Error reading RPC reply: %m");
    goto out;
  }




  if ((int) amd_state >= (int) Finishing)
    goto out;




  pkt_int = (u_int *) pkt;
  pkt_xid = ntohl(*pkt_int);

  switch (pkt_xid & RPC_XID_MASK) {
  case 129:
    dlog("Receiving PORTMAP reply %#x", pkt_xid);
    break;
  case 131:
    dlog("Receiving MOUNTD reply %#x", pkt_xid);
    break;
  case 130:
    dlog("Receiving NFS ping %#x", pkt_xid);
    break;
  case 128:
    dlog("Receiving WebNFS lookup %#x", pkt_xid);
    break;
  default:
    dlog("UNKNOWN RPC XID %#x", pkt_xid);
    break;
  }

  p = fwd_locate(pkt_xid);
  if (!p) {
    dlog("Can't forward reply id %#x", pkt_xid);
    goto out;
  }

  if (p->rf_fwd) {




    *pkt_int = htonl(p->rf_oldid);




    (*p->rf_fwd) ((voidp) pkt, rc, &src_addr, &p->rf_sin, p->rf_ptr, TRUE);
  }




  fwd_free(p);

out:;
}
