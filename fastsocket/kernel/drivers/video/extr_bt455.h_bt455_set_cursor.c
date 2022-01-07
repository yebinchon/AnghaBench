
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt455_regs {int addr_ovly; } ;


 int mb () ;
 int wmb () ;

__attribute__((used)) static inline void bt455_set_cursor(struct bt455_regs *regs)
{
 mb();
 regs->addr_ovly = 0x0f;
 wmb();
 regs->addr_ovly = 0x0f;
 wmb();
 regs->addr_ovly = 0x0f;
}
