
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eh_region {int dummy; } ;


 int ERT_MUST_NOT_THROW ;
 struct eh_region* gen_eh_region (int ,struct eh_region*) ;

struct eh_region *
gen_eh_region_must_not_throw (struct eh_region *outer)
{
  return gen_eh_region (ERT_MUST_NOT_THROW, outer);
}
