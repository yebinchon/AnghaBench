
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int c2p_unsupported () ;

__attribute__((used)) static inline u32 get_mask(unsigned int n)
{
 switch (n) {
 case 1:
  return 0x55555555;

 case 2:
  return 0x33333333;

 case 4:
  return 0x0f0f0f0f;

 case 8:
  return 0x00ff00ff;

 case 16:
  return 0x0000ffff;
 }

 c2p_unsupported();
 return 0;
}
