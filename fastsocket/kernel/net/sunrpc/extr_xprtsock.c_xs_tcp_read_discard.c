
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_skb_reader {size_t count; size_t offset; } ;
struct sock_xprt {size_t tcp_reclen; size_t tcp_offset; } ;


 int dprintk (char*,size_t) ;
 int xs_tcp_check_fraghdr (struct sock_xprt*) ;

__attribute__((used)) static inline void xs_tcp_read_discard(struct sock_xprt *transport, struct xdr_skb_reader *desc)
{
 size_t len;

 len = transport->tcp_reclen - transport->tcp_offset;
 if (len > desc->count)
  len = desc->count;
 desc->count -= len;
 desc->offset += len;
 transport->tcp_offset += len;
 dprintk("RPC:       discarded %Zu bytes\n", len);
 xs_tcp_check_fraghdr(transport);
}
