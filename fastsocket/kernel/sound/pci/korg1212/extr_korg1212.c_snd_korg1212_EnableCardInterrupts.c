
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_korg1212 {int statusRegPtr; } ;


 int LOCAL_DMA1_INT_ENABLE_BIT ;
 int LOCAL_DOORBELL_INT_ENABLE_BIT ;
 int LOCAL_INT_ENABLE_BIT ;
 int PCI_DOORBELL_INT_ENABLE_BIT ;
 int PCI_INT_ENABLE_BIT ;
 int writel (int,int ) ;

__attribute__((used)) static void snd_korg1212_EnableCardInterrupts(struct snd_korg1212 * korg1212)
{
 writel(PCI_INT_ENABLE_BIT |
        PCI_DOORBELL_INT_ENABLE_BIT |
        LOCAL_INT_ENABLE_BIT |
        LOCAL_DOORBELL_INT_ENABLE_BIT |
        LOCAL_DMA1_INT_ENABLE_BIT,
        korg1212->statusRegPtr);
}
