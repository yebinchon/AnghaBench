
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
typedef int ULONGEST ;
typedef int CORE_ADDR ;


 int ARM_A1_REGNUM ;
 int regcache_cooked_read_unsigned (struct regcache*,int ,int *) ;

__attribute__((used)) static CORE_ADDR
arm_extract_struct_value_address (struct regcache *regcache)
{
  ULONGEST ret;

  regcache_cooked_read_unsigned (regcache, ARM_A1_REGNUM, &ret);
  return ret;
}
