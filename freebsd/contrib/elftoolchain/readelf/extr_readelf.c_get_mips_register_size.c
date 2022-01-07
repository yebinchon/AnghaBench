
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int
get_mips_register_size(uint8_t flag)
{
 switch (flag) {
 case 0: return 0;
 case 1: return 32;
 case 2: return 64;
 case 3: return 128;
 default: return -1;
 }
}
