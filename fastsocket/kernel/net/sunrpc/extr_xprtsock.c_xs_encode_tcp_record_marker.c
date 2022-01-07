
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xdr_buf {int len; TYPE_1__* head; } ;
typedef int rpc_fraghdr ;
struct TYPE_2__ {int * iov_base; } ;


 int RPC_LAST_STREAM_FRAGMENT ;
 int htonl (int) ;

__attribute__((used)) static inline void xs_encode_tcp_record_marker(struct xdr_buf *buf)
{
 u32 reclen = buf->len - sizeof(rpc_fraghdr);
 rpc_fraghdr *base = buf->head[0].iov_base;
 *base = htonl(RPC_LAST_STREAM_FRAGMENT | reclen);
}
