
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sec_ptr ;
typedef scalar_t__ file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_3__ {scalar_t__ rawsize; scalar_t__ size; scalar_t__ filepos; } ;


 int FALSE ;
 int SEEK_SET ;
 int TRUE ;
 scalar_t__ bfd_bread (void*,scalar_t__,int *) ;
 int bfd_error_invalid_operation ;
 scalar_t__ bfd_seek (int *,scalar_t__,int ) ;
 int bfd_set_error (int ) ;

bfd_boolean
_bfd_generic_get_section_contents (bfd *abfd,
       sec_ptr section,
       void *location,
       file_ptr offset,
       bfd_size_type count)
{
  bfd_size_type sz;
  if (count == 0)
    return TRUE;

  sz = section->rawsize ? section->rawsize : section->size;
  if (offset + count > sz)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return FALSE;
    }

  if (bfd_seek (abfd, section->filepos + offset, SEEK_SET) != 0
      || bfd_bread (location, count, abfd) != count)
    return FALSE;

  return TRUE;
}
