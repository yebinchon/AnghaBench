
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int IA64_FR0_REGNUM ;
 int IA64_FR127_REGNUM ;

__attribute__((used)) static int
ia64_convert_register_p (int regno, struct type *type)
{
  return (regno >= IA64_FR0_REGNUM && regno <= IA64_FR127_REGNUM);
}
