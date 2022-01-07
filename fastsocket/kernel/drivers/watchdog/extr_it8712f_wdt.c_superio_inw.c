
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG ;
 int VAL ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static int superio_inw(int reg)
{
 int val;
 outb(reg++, REG);
 val = inb(VAL) << 8;
 outb(reg, REG);
 val |= inb(VAL);
 return val;
}
