
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_skb_reader {int dummy; } ;
struct sock_xprt {int tcp_offset; int tcp_flags; int tcp_copied; int tcp_xid; } ;


 int TCP_RCV_COPY_XID ;
 int TCP_RCV_READ_CALLDIR ;
 int TCP_RPC_REPLY ;
 int dprintk (char*,...) ;
 int ntohl (int ) ;
 size_t xdr_skb_read_bits (struct xdr_skb_reader*,char*,size_t) ;
 int xs_tcp_check_fraghdr (struct sock_xprt*) ;

__attribute__((used)) static inline void xs_tcp_read_xid(struct sock_xprt *transport, struct xdr_skb_reader *desc)
{
 size_t len, used;
 char *p;

 len = sizeof(transport->tcp_xid) - transport->tcp_offset;
 dprintk("RPC:       reading XID (%Zu bytes)\n", len);
 p = ((char *) &transport->tcp_xid) + transport->tcp_offset;
 used = xdr_skb_read_bits(desc, p, len);
 transport->tcp_offset += used;
 if (used != len)
  return;
 transport->tcp_flags &= ~TCP_RCV_COPY_XID;
 transport->tcp_flags |= TCP_RCV_READ_CALLDIR;
 transport->tcp_copied = 4;
 dprintk("RPC:       reading %s XID %08x\n",
   (transport->tcp_flags & TCP_RPC_REPLY) ? "reply for"
             : "request with",
   ntohl(transport->tcp_xid));
 xs_tcp_check_fraghdr(transport);
}
