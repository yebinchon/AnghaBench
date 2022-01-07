
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ file_ptr ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_9__ {int output_has_begun; } ;
typedef TYPE_1__ bfd ;
struct TYPE_10__ {scalar_t__ filepos; int lma; int name; } ;
typedef TYPE_2__ asection ;


 int BFD_ASSERT (int) ;
 int FALSE ;
 int SEEK_SET ;
 int TRUE ;
 int _LIB ;
 int bfd_bwrite (void const*,int,TYPE_1__*) ;
 int bfd_get_32 (TYPE_1__*,int *) ;
 scalar_t__ bfd_seek (TYPE_1__*,scalar_t__,int ) ;
 int ecoff_compute_section_file_positions (TYPE_1__*) ;
 scalar_t__ streq (int ,int ) ;

bfd_boolean
_bfd_ecoff_set_section_contents (bfd *abfd,
     asection *section,
     const void * location,
     file_ptr offset,
     bfd_size_type count)
{
  file_ptr pos;



  if (! abfd->output_has_begun
      && ! ecoff_compute_section_file_positions (abfd))
    return FALSE;



  if (streq (section->name, _LIB))
    {
      bfd_byte *rec, *recend;

      rec = (bfd_byte *) location;
      recend = rec + count;
      while (rec < recend)
 {
   ++section->lma;
   rec += bfd_get_32 (abfd, rec) * 4;
 }

      BFD_ASSERT (rec == recend);
    }

  if (count == 0)
    return TRUE;

  pos = section->filepos + offset;
  if (bfd_seek (abfd, pos, SEEK_SET) != 0
      || bfd_bwrite (location, count, abfd) != count)
    return FALSE;

  return TRUE;
}
