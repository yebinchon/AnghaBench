
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (int) ;
 int outb (int,int) ;

void viafb_write_reg_mask(u8 index, int io_port, u8 data, u8 mask)
{
 u8 tmp;

 outb(index, io_port);
 tmp = inb(io_port + 1);
 outb((data & mask) | (tmp & (~mask)), io_port + 1);

}
