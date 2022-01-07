
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_xprt {scalar_t__ tcp_offset; scalar_t__ tcp_reclen; int tcp_flags; scalar_t__ tcp_copied; } ;


 int TCP_RCV_COPY_DATA ;
 int TCP_RCV_COPY_FRAGHDR ;
 int TCP_RCV_COPY_XID ;
 int TCP_RCV_LAST_FRAG ;

__attribute__((used)) static void xs_tcp_check_fraghdr(struct sock_xprt *transport)
{
 if (transport->tcp_offset == transport->tcp_reclen) {
  transport->tcp_flags |= TCP_RCV_COPY_FRAGHDR;
  transport->tcp_offset = 0;
  if (transport->tcp_flags & TCP_RCV_LAST_FRAG) {
   transport->tcp_flags &= ~TCP_RCV_COPY_DATA;
   transport->tcp_flags |= TCP_RCV_COPY_XID;
   transport->tcp_copied = 0;
  }
 }
}
