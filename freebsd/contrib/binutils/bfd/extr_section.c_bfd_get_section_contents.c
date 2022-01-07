
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
struct TYPE_3__ {int flags; scalar_t__ rawsize; scalar_t__ size; scalar_t__ contents; } ;


 int BFD_SEND (int *,int ,int *) ;
 int FALSE ;
 int SEC_CONSTRUCTOR ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int TRUE ;
 int _bfd_get_section_contents ;
 int bfd_error_bad_value ;
 int bfd_set_error (int ) ;
 int memcpy (void*,scalar_t__,size_t) ;
 int memset (void*,int ,size_t) ;

bfd_boolean
bfd_get_section_contents (bfd *abfd,
     sec_ptr section,
     void *location,
     file_ptr offset,
     bfd_size_type count)
{
  bfd_size_type sz;

  if (section->flags & SEC_CONSTRUCTOR)
    {
      memset (location, 0, (size_t) count);
      return TRUE;
    }

  sz = section->rawsize ? section->rawsize : section->size;
  if ((bfd_size_type) offset > sz
      || count > sz
      || offset + count > sz
      || count != (size_t) count)
    {
      bfd_set_error (bfd_error_bad_value);
      return FALSE;
    }

  if (count == 0)

    return TRUE;

  if ((section->flags & SEC_HAS_CONTENTS) == 0)
    {
      memset (location, 0, (size_t) count);
      return TRUE;
    }

  if ((section->flags & SEC_IN_MEMORY) != 0)
    {
      memcpy (location, section->contents + offset, (size_t) count);
      return TRUE;
    }

  return BFD_SEND (abfd, _bfd_get_section_contents,
     (abfd, section, location, offset, count));
}
