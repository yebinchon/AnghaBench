
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixart_mgr {int dummy; } ;


 int MIXART_BA1_BRUTAL_RESET_OFFSET ;
 int MIXART_REG (struct mixart_mgr*,int ) ;
 int writel_be (int,int ) ;

void snd_mixart_reset_board(struct mixart_mgr *mgr)
{

 writel_be( 1, MIXART_REG(mgr, MIXART_BA1_BRUTAL_RESET_OFFSET) );
 return;
}
