
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* sec_ptr ;
typedef scalar_t__ file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_11__ {int output_has_begun; } ;
typedef TYPE_2__ bfd ;
struct TYPE_10__ {scalar_t__ size; void const* contents; } ;


 scalar_t__ BFD_SEND (TYPE_2__*,int ,TYPE_2__*) ;
 int FALSE ;
 int SEC_HAS_CONTENTS ;
 int TRUE ;
 int _bfd_set_section_contents ;
 int bfd_error_bad_value ;
 int bfd_error_invalid_operation ;
 int bfd_error_no_contents ;
 int bfd_get_section_flags (TYPE_2__*,TYPE_1__*) ;
 int bfd_set_error (int ) ;
 int bfd_write_p (TYPE_2__*) ;
 int memcpy (void const*,void const*,size_t) ;

bfd_boolean
bfd_set_section_contents (bfd *abfd,
     sec_ptr section,
     const void *location,
     file_ptr offset,
     bfd_size_type count)
{
  bfd_size_type sz;

  if (!(bfd_get_section_flags (abfd, section) & SEC_HAS_CONTENTS))
    {
      bfd_set_error (bfd_error_no_contents);
      return FALSE;
    }

  sz = section->size;
  if ((bfd_size_type) offset > sz
      || count > sz
      || offset + count > sz
      || count != (size_t) count)
    {
      bfd_set_error (bfd_error_bad_value);
      return FALSE;
    }

  if (!bfd_write_p (abfd))
    {
      bfd_set_error (bfd_error_invalid_operation);
      return FALSE;
    }


  if (section->contents
      && location != section->contents + offset)
    memcpy (section->contents + offset, location, (size_t) count);

  if (BFD_SEND (abfd, _bfd_set_section_contents,
  (abfd, section, location, offset, count)))
    {
      abfd->output_has_begun = TRUE;
      return TRUE;
    }

  return FALSE;
}
