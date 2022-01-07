
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;


 int do_ppc_sysv_return_value (struct gdbarch*,struct type*,struct regcache*,void*,void const*,int) ;

enum return_value_convention
ppc_sysv_abi_broken_return_value (struct gdbarch *gdbarch,
      struct type *valtype,
      struct regcache *regcache,
      void *readbuf, const void *writebuf)
{
  return do_ppc_sysv_return_value (gdbarch, valtype, regcache, readbuf,
       writebuf, 1);
}
