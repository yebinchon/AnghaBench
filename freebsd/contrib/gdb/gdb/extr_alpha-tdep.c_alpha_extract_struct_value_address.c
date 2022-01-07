
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
typedef int ULONGEST ;
typedef int CORE_ADDR ;


 int ALPHA_V0_REGNUM ;
 int regcache_cooked_read_unsigned (struct regcache*,int ,int *) ;

__attribute__((used)) static CORE_ADDR
alpha_extract_struct_value_address (struct regcache *regcache)
{
  ULONGEST addr;
  regcache_cooked_read_unsigned (regcache, ALPHA_V0_REGNUM, &addr);
  return addr;
}
