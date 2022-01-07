
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_error_type ;


 int bfd_error ;

bfd_error_type
bfd_get_error (void)
{
  return bfd_error;
}
