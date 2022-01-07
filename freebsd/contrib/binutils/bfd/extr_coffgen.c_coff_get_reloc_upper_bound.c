
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sec_ptr ;
typedef int bfd ;
typedef int arelent ;
struct TYPE_3__ {int reloc_count; } ;


 int bfd_error_invalid_operation ;
 scalar_t__ bfd_get_format (int *) ;
 scalar_t__ bfd_object ;
 int bfd_set_error (int ) ;

long
coff_get_reloc_upper_bound (bfd *abfd, sec_ptr asect)
{
  if (bfd_get_format (abfd) != bfd_object)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return -1;
    }
  return (asect->reloc_count + 1) * sizeof (arelent *);
}
