
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_skb_reader {int dummy; } ;
struct rpc_xprt {int dummy; } ;


 int xs_tcp_read_reply (struct rpc_xprt*,struct xdr_skb_reader*) ;

__attribute__((used)) static inline int _xs_tcp_read_data(struct rpc_xprt *xprt,
     struct xdr_skb_reader *desc)
{
 return xs_tcp_read_reply(xprt, desc);
}
