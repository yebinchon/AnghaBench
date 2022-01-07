
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_2__ {unsigned long extended_names_size; char* extended_names; } ;


 TYPE_1__* bfd_ardata (int *) ;
 int bfd_error_malformed_archive ;
 int bfd_set_error (int ) ;
 scalar_t__ errno ;
 unsigned long strtol (char const*,int *,int) ;

__attribute__((used)) static char *
get_extended_arelt_filename (bfd *arch, const char *name)
{
  unsigned long index = 0;



  errno = 0;

  index = strtol (name + 1, ((void*)0), 10);
  if (errno != 0 || index >= bfd_ardata (arch)->extended_names_size)
    {
      bfd_set_error (bfd_error_malformed_archive);
      return ((void*)0);
    }

  return bfd_ardata (arch)->extended_names + index;
}
