
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HGA_INDEX_PORT ;
 int HGA_VALUE_PORT ;
 int outb_p (unsigned int,int ) ;

__attribute__((used)) static void write_hga_w(unsigned int val, unsigned char reg)
{
 outb_p(reg, HGA_INDEX_PORT); outb_p(val >> 8, HGA_VALUE_PORT);
 outb_p(reg+1, HGA_INDEX_PORT); outb_p(val & 0xff, HGA_VALUE_PORT);
}
