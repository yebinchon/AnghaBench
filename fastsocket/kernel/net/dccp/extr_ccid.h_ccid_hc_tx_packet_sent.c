
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct ccid {TYPE_1__* ccid_ops; } ;
struct TYPE_2__ {int (* ccid_hc_tx_packet_sent ) (struct sock*,int,unsigned int) ;} ;


 int stub1 (struct sock*,int,unsigned int) ;

__attribute__((used)) static inline void ccid_hc_tx_packet_sent(struct ccid *ccid, struct sock *sk,
       int more, unsigned int len)
{
 if (ccid->ccid_ops->ccid_hc_tx_packet_sent != ((void*)0))
  ccid->ccid_ops->ccid_hc_tx_packet_sent(sk, more, len);
}
