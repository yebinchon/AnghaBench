
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_byte ;
typedef unsigned long bfd ;
typedef int asection ;


 int BFD_ASSERT (unsigned long*) ;
 int GNU_DEBUGLINK ;
 unsigned long bfd_get_32 (unsigned long*,int *) ;
 int * bfd_get_section_by_name (unsigned long*,int ) ;
 int bfd_malloc_and_get_section (unsigned long*,int *,int **) ;
 int free (int *) ;
 int strlen (char*) ;

__attribute__((used)) static char *
get_debug_link_info (bfd *abfd, unsigned long *crc32_out)
{
  asection *sect;
  unsigned long crc32;
  bfd_byte *contents;
  int crc_offset;
  char *name;

  BFD_ASSERT (abfd);
  BFD_ASSERT (crc32_out);

  sect = bfd_get_section_by_name (abfd, GNU_DEBUGLINK);

  if (sect == ((void*)0))
    return ((void*)0);

  if (!bfd_malloc_and_get_section (abfd, sect, &contents))
    {
      if (contents != ((void*)0))
 free (contents);
      return ((void*)0);
    }


  name = (char *) contents;
  crc_offset = strlen (name) + 1;
  crc_offset = (crc_offset + 3) & ~3;

  crc32 = bfd_get_32 (abfd, contents + crc_offset);

  *crc32_out = crc32;
  return name;
}
