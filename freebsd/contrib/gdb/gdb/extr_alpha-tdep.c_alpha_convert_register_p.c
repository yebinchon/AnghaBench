
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int ALPHA_FP0_REGNUM ;

__attribute__((used)) static int
alpha_convert_register_p (int regno, struct type *type)
{
  return (regno >= ALPHA_FP0_REGNUM && regno < ALPHA_FP0_REGNUM + 31);
}
