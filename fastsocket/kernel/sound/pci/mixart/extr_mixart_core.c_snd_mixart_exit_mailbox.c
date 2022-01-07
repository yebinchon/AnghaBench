
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixart_mgr {int dummy; } ;


 int MIXART_HOST_ALL_INTERRUPT_MASKED ;
 int MIXART_PCI_OMIMR_OFFSET ;
 int MIXART_REG (struct mixart_mgr*,int ) ;
 int writel_le (int ,int ) ;

void snd_mixart_exit_mailbox(struct mixart_mgr *mgr)
{

 writel_le( MIXART_HOST_ALL_INTERRUPT_MASKED, MIXART_REG( mgr, MIXART_PCI_OMIMR_OFFSET));
 return;
}
