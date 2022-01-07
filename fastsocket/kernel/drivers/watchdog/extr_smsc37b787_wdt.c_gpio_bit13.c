
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write_io_cr (int,unsigned char) ;

__attribute__((used)) static inline void gpio_bit13(unsigned char reg)
{
 write_io_cr(0xE3, reg);
}
