
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct msghdr {int dummy; } ;
struct kiocb {int dummy; } ;
struct inet_sock {int dport; int daddr; int sport; int saddr; } ;
struct ccid3_hc_tx_sock {int ccid3hctx_x_recv; int ccid3hctx_x; int ccid3hctx_t_ipi; int ccid3hctx_x_calc; int ccid3hctx_p; int ccid3hctx_rtt; int ccid3hctx_s; } ;


 scalar_t__ DCCPC_CCID3 ;
 struct ccid3_hc_tx_sock* ccid3_hc_tx_sk (struct sock*) ;
 scalar_t__ ccid_get_current_tx_ccid (int ) ;
 int dccp_sk (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int jprobe_return () ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ port ;
 int printl (char*,int *,scalar_t__,int *,scalar_t__,size_t,...) ;

__attribute__((used)) static int jdccp_sendmsg(struct kiocb *iocb, struct sock *sk,
    struct msghdr *msg, size_t size)
{
 const struct inet_sock *inet = inet_sk(sk);
 struct ccid3_hc_tx_sock *hctx = ((void*)0);

 if (ccid_get_current_tx_ccid(dccp_sk(sk)) == DCCPC_CCID3)
  hctx = ccid3_hc_tx_sk(sk);

 if (port == 0 || ntohs(inet->dport) == port ||
     ntohs(inet->sport) == port) {
  if (hctx)
   printl("%pI4:%u %pI4:%u %d %d %d %d %u "
          "%llu %llu %d\n",
          &inet->saddr, ntohs(inet->sport),
          &inet->daddr, ntohs(inet->dport), size,
          hctx->ccid3hctx_s, hctx->ccid3hctx_rtt,
          hctx->ccid3hctx_p, hctx->ccid3hctx_x_calc,
          hctx->ccid3hctx_x_recv >> 6,
          hctx->ccid3hctx_x >> 6, hctx->ccid3hctx_t_ipi);
  else
   printl("%pI4:%u %pI4:%u %d\n",
          &inet->saddr, ntohs(inet->sport),
          &inet->daddr, ntohs(inet->dport), size);
 }

 jprobe_return();
 return 0;
}
