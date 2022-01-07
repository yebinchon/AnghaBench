
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int i386_fp_regnum_p (int) ;

__attribute__((used)) static int
amd64_convert_register_p (int regnum, struct type *type)
{
  return i386_fp_regnum_p (regnum);
}
