
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG ;
 int io_lock ;
 int outb (int,int ) ;
 int spin_lock (int *) ;

__attribute__((used)) static inline void superio_enter(void)
{
 spin_lock(&io_lock);
 outb(0x87, REG);
 outb(0x01, REG);
 outb(0x55, REG);
 outb(0x55, REG);
}
