
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;


 int outb (int ,scalar_t__) ;

void viafb_write_reg(u8 index, u16 io_port, u8 data)
{
 outb(index, io_port);
 outb(data, io_port + 1);

}
