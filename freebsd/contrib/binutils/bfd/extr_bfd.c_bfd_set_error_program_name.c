
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* _bfd_error_program_name ;

void
bfd_set_error_program_name (const char *name)
{
  _bfd_error_program_name = name;
}
