
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;



bfd_boolean
bfd_is_undefined_symclass (int symclass)
{
  return symclass == 'U' || symclass == 'w' || symclass == 'v';
}
