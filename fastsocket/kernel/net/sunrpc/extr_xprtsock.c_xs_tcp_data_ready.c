
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int sk_callback_lock; } ;
struct rpc_xprt {scalar_t__ reestablish_timeout; } ;
struct TYPE_4__ {struct rpc_xprt* data; } ;
struct TYPE_5__ {int count; TYPE_1__ arg; } ;
typedef TYPE_2__ read_descriptor_t ;


 int dprintk (char*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int tcp_read_sock (struct sock*,TYPE_2__*,int ) ;
 struct rpc_xprt* xprt_from_sock (struct sock*) ;
 int xs_tcp_data_recv ;

__attribute__((used)) static void xs_tcp_data_ready(struct sock *sk, int bytes)
{
 struct rpc_xprt *xprt;
 read_descriptor_t rd_desc;
 int read;

 dprintk("RPC:       xs_tcp_data_ready...\n");

 read_lock_bh(&sk->sk_callback_lock);
 if (!(xprt = xprt_from_sock(sk)))
  goto out;



 if (xprt->reestablish_timeout)
  xprt->reestablish_timeout = 0;


 rd_desc.arg.data = xprt;
 do {
  rd_desc.count = 65536;
  read = tcp_read_sock(sk, &rd_desc, xs_tcp_data_recv);
 } while (read > 0);
out:
 read_unlock_bh(&sk->sk_callback_lock);
}
