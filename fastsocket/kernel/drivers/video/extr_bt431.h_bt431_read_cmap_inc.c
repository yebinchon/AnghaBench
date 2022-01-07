
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile u16 ;
struct bt431_regs {int volatile addr_cmap; } ;


 int mb () ;

__attribute__((used)) static inline u16 bt431_read_cmap_inc(struct bt431_regs *regs)
{




 volatile u16 *r = &(regs->addr_cmap);

 mb();
 return *r;
}
