
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG ;
 int VAL ;
 int outb (int,int ) ;

__attribute__((used)) static inline void superio_exit(void)
{
 outb(0x02, REG);
 outb(0x02, VAL);
}
