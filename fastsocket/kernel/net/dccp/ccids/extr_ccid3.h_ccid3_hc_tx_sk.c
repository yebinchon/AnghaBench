
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct ccid3_hc_tx_sock {int dummy; } ;
struct TYPE_2__ {int dccps_hc_tx_ccid; } ;


 int BUG_ON (int ) ;
 struct ccid3_hc_tx_sock* ccid_priv (int ) ;
 TYPE_1__* dccp_sk (struct sock const*) ;

__attribute__((used)) static inline struct ccid3_hc_tx_sock *ccid3_hc_tx_sk(const struct sock *sk)
{
 struct ccid3_hc_tx_sock *hctx = ccid_priv(dccp_sk(sk)->dccps_hc_tx_ccid);
 BUG_ON(hctx == ((void*)0));
 return hctx;
}
