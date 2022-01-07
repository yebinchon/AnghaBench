
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eurwdt_write_reg (int,int) ;
 int io ;
 int outb (int,int ) ;

__attribute__((used)) static inline void eurwdt_unlock_chip(void)
{
 outb(0x55, io);
 eurwdt_write_reg(0x07, 0x08);
}
