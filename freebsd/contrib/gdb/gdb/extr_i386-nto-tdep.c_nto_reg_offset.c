
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_GPREGS ;
 int* regmap ;

__attribute__((used)) static int
nto_reg_offset (int regno)
{
  return (regno >= 0 && regno < NUM_GPREGS) ? regmap[regno] : -1;
}
