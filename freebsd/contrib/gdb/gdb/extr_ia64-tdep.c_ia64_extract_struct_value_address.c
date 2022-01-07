
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
typedef int CORE_ADDR ;


 int error (char*) ;

CORE_ADDR
ia64_extract_struct_value_address (struct regcache *regcache)
{
  error ("ia64_extract_struct_value_address called and cannot get struct value address");
  return 0;
}
