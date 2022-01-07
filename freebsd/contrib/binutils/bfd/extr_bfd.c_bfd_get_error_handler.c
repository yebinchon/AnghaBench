
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_error_handler_type ;


 int _bfd_error_handler ;

bfd_error_handler_type
bfd_get_error_handler (void)
{
  return _bfd_error_handler;
}
