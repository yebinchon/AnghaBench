
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;



__attribute__((used)) static __u32 ftdi_2232h_baud_base_to_divisor(int baud, int base)
{
 static const unsigned char divfrac[8] = { 0, 3, 2, 4, 1, 5, 6, 7 };
 __u32 divisor;
 int divisor3;


 divisor3 = (base / 10 / baud) * 8;

 divisor = divisor3 >> 3;
 divisor |= (__u32)divfrac[divisor3 & 0x7] << 14;

 if (divisor == 1)
  divisor = 0;
 else if (divisor == 0x4001)
  divisor = 1;





 divisor |= 0x00020000;
 return divisor;
}
