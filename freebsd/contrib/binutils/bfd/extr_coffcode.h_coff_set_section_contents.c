
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* sec_ptr ;
typedef scalar_t__ file_ptr ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_10__ {int output_has_begun; } ;
typedef TYPE_2__ bfd ;
struct TYPE_9__ {scalar_t__ filepos; int lma; int name; } ;


 int BFD_ASSERT (int) ;
 int FALSE ;
 int SEEK_SET ;
 int TRUE ;
 int _LIB ;
 int bfd_bwrite (void const*,int,TYPE_2__*) ;
 int bfd_get_32 (TYPE_2__*,int *) ;
 scalar_t__ bfd_seek (TYPE_2__*,scalar_t__,int ) ;
 int coff_compute_section_file_positions (TYPE_2__*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bfd_boolean
coff_set_section_contents (bfd * abfd,
      sec_ptr section,
      const void * location,
      file_ptr offset,
      bfd_size_type count)
{
  if (! abfd->output_has_begun)
    {
      if (! coff_compute_section_file_positions (abfd))
 return FALSE;
    }
  if (section->filepos == 0)
    return TRUE;

  if (bfd_seek (abfd, section->filepos + offset, SEEK_SET) != 0)
    return FALSE;

  if (count == 0)
    return TRUE;

  return bfd_bwrite (location, count, abfd) == count;
}
