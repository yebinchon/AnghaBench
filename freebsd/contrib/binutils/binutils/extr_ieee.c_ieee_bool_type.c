
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 int TRUE ;
 int ieee_int_type (void*,unsigned int,int ) ;

__attribute__((used)) static bfd_boolean
ieee_bool_type (void *p, unsigned int size)
{
  return ieee_int_type (p, size, TRUE);
}
