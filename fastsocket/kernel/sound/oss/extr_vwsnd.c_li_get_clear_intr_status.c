
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lithium_t ;


 int LI_INTR_MASK ;
 int LI_INTR_STATUS ;
 unsigned int li_readl (int *,int ) ;
 int li_writel (int *,int ,int ) ;

__attribute__((used)) static unsigned int li_get_clear_intr_status(lithium_t *lith)
{
 unsigned int status;

 status = li_readl(lith, LI_INTR_STATUS);
 li_writel(lith, LI_INTR_STATUS, ~0);
 return status & li_readl(lith, LI_INTR_MASK);
}
