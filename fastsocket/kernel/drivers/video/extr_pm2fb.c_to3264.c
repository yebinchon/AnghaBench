
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 to3264(u32 timing, int bpp, int is64)
{
 switch (bpp) {
 case 24:
  timing *= 3;
 case 8:
  timing >>= 1;
 case 16:
  timing >>= 1;
 case 32:
  break;
 }
 if (is64)
  timing >>= 1;
 return timing;
}
