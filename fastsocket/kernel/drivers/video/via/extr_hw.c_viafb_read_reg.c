
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (int) ;
 int outb (int ,int) ;

u8 viafb_read_reg(int io_port, u8 index)
{
 outb(index, io_port);
 return inb(io_port + 1);
}
