
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct regcache {int dummy; } ;


 int IA64_FR8_REGNUM ;
 int IA64_GR8_REGNUM ;
 int MAX_REGISTER_SIZE ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_FLT ;
 int builtin_type_ia64_ext ;
 int convert_typed_floating (void const*,struct type*,char*,int ) ;
 int regcache_cooked_write (struct regcache*,int ,void const*) ;
 int target_store_registers (int ) ;

__attribute__((used)) static void
ia64_store_return_value (struct type *type, struct regcache *regcache, const void *valbuf)
{
  if (TYPE_CODE (type) == TYPE_CODE_FLT)
    {
      char to[MAX_REGISTER_SIZE];
      convert_typed_floating (valbuf, type, to, builtin_type_ia64_ext);
      regcache_cooked_write (regcache, IA64_FR8_REGNUM, (void *)to);
      target_store_registers (IA64_FR8_REGNUM);
    }
  else
    regcache_cooked_write (regcache, IA64_GR8_REGNUM, valbuf);
}
