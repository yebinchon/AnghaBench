
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;
typedef int asection ;


 unsigned long MAX_NOTESZ ;
 unsigned long bfd_h_get_32 (int *,char const*) ;
 unsigned long bfd_section_size (int *,int *) ;
 int gdb_assert (int) ;
 scalar_t__ strcmp (char const*,char const*) ;
 unsigned long strlen (char const*) ;

__attribute__((used)) static int
check_note (bfd *abfd, asection *sect, const char *note,
     const char *name, unsigned long descsz, unsigned long type)
{
  unsigned long notesz;
  unsigned long rdescsz;


  notesz = 4 * 3;
  notesz += strlen (name) + 1;
  notesz = ((notesz + 3) & ~3);


  gdb_assert (notesz <= MAX_NOTESZ);


  if (notesz > bfd_section_size (abfd, sect))
    return 0;


  if (bfd_h_get_32 (abfd, note) != (strlen (name) + 1)
      || strcmp (note + 12, name) != 0)
    return 0;


  rdescsz = bfd_h_get_32 (abfd, note + 4);
  if (descsz != (unsigned long)-1 && rdescsz != descsz)
    return 0;

  notesz += rdescsz;
  notesz = ((notesz + 3) & ~3);


  if (notesz > bfd_section_size (abfd, sect))
    return 0;


  if (bfd_h_get_32 (abfd, note + 8) != type)
    return 0;

  return 1;
}
