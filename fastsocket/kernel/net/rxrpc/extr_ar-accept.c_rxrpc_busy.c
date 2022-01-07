
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin; } ;
struct sockaddr_rxrpc {TYPE_1__ transport; } ;
struct rxrpc_local {int socket; int debug_id; } ;
struct rxrpc_header {int serial; scalar_t__ _rsvd; scalar_t__ userStatus; scalar_t__ flags; int type; scalar_t__ seq; } ;
struct msghdr {int msg_namelen; scalar_t__ msg_flags; scalar_t__ msg_controllen; int * msg_control; int * msg_name; } ;
struct kvec {int iov_len; struct rxrpc_header* iov_base; } ;


 int EAGAIN ;
 int RXRPC_PACKET_TYPE_BUSY ;
 int _enter (char*,int ) ;
 int _leave (char*,...) ;
 int _proto (char*,int ) ;
 int htonl (int) ;
 int kernel_sendmsg (int ,struct msghdr*,struct kvec*,int,size_t) ;
 int ntohl (int ) ;

__attribute__((used)) static int rxrpc_busy(struct rxrpc_local *local, struct sockaddr_rxrpc *srx,
        struct rxrpc_header *hdr)
{
 struct msghdr msg;
 struct kvec iov[1];
 size_t len;
 int ret;

 _enter("%d,,", local->debug_id);

 msg.msg_name = &srx->transport.sin;
 msg.msg_namelen = sizeof(srx->transport.sin);
 msg.msg_control = ((void*)0);
 msg.msg_controllen = 0;
 msg.msg_flags = 0;

 hdr->seq = 0;
 hdr->type = RXRPC_PACKET_TYPE_BUSY;
 hdr->flags = 0;
 hdr->userStatus = 0;
 hdr->_rsvd = 0;

 iov[0].iov_base = hdr;
 iov[0].iov_len = sizeof(*hdr);

 len = iov[0].iov_len;

 hdr->serial = htonl(1);
 _proto("Tx BUSY %%%u", ntohl(hdr->serial));

 ret = kernel_sendmsg(local->socket, &msg, iov, 1, len);
 if (ret < 0) {
  _leave(" = -EAGAIN [sendmsg failed: %d]", ret);
  return -EAGAIN;
 }

 _leave(" = 0");
 return 0;
}
