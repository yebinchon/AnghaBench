
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 int lang_float_flag ;

void
lang_float (bfd_boolean maybe)
{
  lang_float_flag = maybe;
}
