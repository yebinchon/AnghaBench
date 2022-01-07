
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt455_regs {int addr_ovly; } ;


 int bt455_write_ovly_entry (struct bt455_regs*,int,int,int,int) ;
 int wmb () ;

__attribute__((used)) static inline void bt455_erase_cursor(struct bt455_regs *regs)
{


 bt455_write_ovly_entry(regs, 8, 0x03, 0x03, 0x03);
 bt455_write_ovly_entry(regs, 9, 0x07, 0x07, 0x07);

 wmb();
 regs->addr_ovly = 0x09;
 wmb();
 regs->addr_ovly = 0x09;
 wmb();
 regs->addr_ovly = 0x09;
}
