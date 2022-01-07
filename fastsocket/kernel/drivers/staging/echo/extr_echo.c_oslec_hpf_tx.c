
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oslec_state {int adaption_mode; int tx_1; int tx_2; } ;
typedef int int16_t ;


 int DC_LOG2BETA ;
 int ECHO_CAN_USE_TX_HPF ;

int16_t oslec_hpf_tx(struct oslec_state *ec, int16_t tx)
{
 int tmp, tmp1;

 if (ec->adaption_mode & ECHO_CAN_USE_TX_HPF) {
  tmp = tx << 15;
  tmp -= (tmp >> 4);

  ec->tx_1 += -(ec->tx_1 >> DC_LOG2BETA) + tmp - ec->tx_2;
  tmp1 = ec->tx_1 >> 15;
  if (tmp1 > 32767)
   tmp1 = 32767;
  if (tmp1 < -32767)
   tmp1 = -32767;
  tx = tmp1;
  ec->tx_2 = tmp;
 }

 return tx;
}
