
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 unsigned int STT_FUNC ;

bfd_boolean
_bfd_elf_is_function_type (unsigned int type)
{
  return (type == STT_FUNC);
}
