
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int wm9081_volatile_register(unsigned int reg)
{
 switch (reg) {
 case 128:
  return 1;
 default:
  return 0;
 }
}
