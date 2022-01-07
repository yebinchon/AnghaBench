
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch {int dummy; } ;


 int IA64_FR0_REGNUM ;
 int IA64_FR127_REGNUM ;
 struct type* builtin_type_ia64_ext ;
 struct type* builtin_type_long ;

struct type *
ia64_register_type (struct gdbarch *arch, int reg)
{
  if (reg >= IA64_FR0_REGNUM && reg <= IA64_FR127_REGNUM)
    return builtin_type_ia64_ext;
  else
    return builtin_type_long;
}
