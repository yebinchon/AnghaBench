
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lithium_t ;


 int DBGEV (char*,int *,unsigned int) ;
 int LI_INTR_MASK ;
 int LI_INTR_STATUS ;
 unsigned int li_readl (int *,int ) ;
 int li_writel (int *,int ,unsigned int) ;

__attribute__((used)) static void li_enable_interrupts(lithium_t *lith, unsigned int mask)
{
 DBGEV("(lith=0x%p, mask=0x%x)\n", lith, mask);



 li_writel(lith, LI_INTR_STATUS, mask);



 mask |= li_readl(lith, LI_INTR_MASK);
 li_writel(lith, LI_INTR_MASK, mask);
}
