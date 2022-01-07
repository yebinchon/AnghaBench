
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usba_udc {int dummy; } ;


 int CTRL ;
 int DBG (int ,char*,unsigned int) ;
 int DBG_BUS ;
 int DEV_ADDR ;
 int USBA_BFINS (int ,unsigned int,int ) ;
 int usba_readl (struct usba_udc*,int ) ;
 int usba_writel (struct usba_udc*,int ,int ) ;

__attribute__((used)) static inline void set_address(struct usba_udc *udc, unsigned int addr)
{
 u32 regval;

 DBG(DBG_BUS, "setting address %u...\n", addr);
 regval = usba_readl(udc, CTRL);
 regval = USBA_BFINS(DEV_ADDR, addr, regval);
 usba_writel(udc, CTRL, regval);
}
