
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct objfile {int objfile_obstack; int * obfd; } ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_5__ {int filepos; } ;
typedef TYPE_1__ asection ;


 int SEEK_SET ;
 scalar_t__ bfd_bread (char*,scalar_t__,int *) ;
 int bfd_get_filename (int *) ;
 scalar_t__ bfd_get_section_size (TYPE_1__*) ;
 scalar_t__ bfd_seek (int *,int ,int ) ;
 int error (char*,int ) ;
 scalar_t__ obstack_alloc (int *,scalar_t__) ;
 scalar_t__ symfile_relocate_debug_section (int *,TYPE_1__*,int *) ;

char *
dwarf2_read_section (struct objfile *objfile, asection *sectp)
{
  bfd *abfd = objfile->obfd;
  char *buf, *retbuf;
  bfd_size_type size = bfd_get_section_size (sectp);

  if (size == 0)
    return ((void*)0);

  buf = (char *) obstack_alloc (&objfile->objfile_obstack, size);
  retbuf
    = (char *) symfile_relocate_debug_section (abfd, sectp, (bfd_byte *) buf);
  if (retbuf != ((void*)0))
    return retbuf;

  if (bfd_seek (abfd, sectp->filepos, SEEK_SET) != 0
      || bfd_bread (buf, size, abfd) != size)
    error ("Dwarf Error: Can't read DWARF data from '%s'",
    bfd_get_filename (abfd));

  return buf;
}
