
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int ftdi_2232h_baud_base_to_divisor (int,int) ;

__attribute__((used)) static __u32 ftdi_2232h_baud_to_divisor(int baud)
{
  return ftdi_2232h_baud_base_to_divisor(baud, 120000000);
}
