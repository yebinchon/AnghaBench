
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int flagword ;
typedef int bfd_size_type ;
typedef int bfd ;
typedef int asection ;


 int GNU_DEBUGLINK ;
 int SEC_DEBUGGING ;
 int SEC_HAS_CONTENTS ;
 int SEC_READONLY ;
 int bfd_error_invalid_operation ;
 int * bfd_get_section_by_name (int *,int ) ;
 int * bfd_make_section_with_flags (int *,int ,int) ;
 int bfd_set_error (int ) ;
 int bfd_set_section_size (int *,int *,int) ;
 char* lbasename (char const*) ;
 int strlen (char const*) ;

asection *
bfd_create_gnu_debuglink_section (bfd *abfd, const char *filename)
{
  asection *sect;
  bfd_size_type debuglink_size;
  flagword flags;

  if (abfd == ((void*)0) || filename == ((void*)0))
    {
      bfd_set_error (bfd_error_invalid_operation);
      return ((void*)0);
    }


  filename = lbasename (filename);

  sect = bfd_get_section_by_name (abfd, GNU_DEBUGLINK);
  if (sect)
    {

      bfd_set_error (bfd_error_invalid_operation);
      return ((void*)0);
    }

  flags = SEC_HAS_CONTENTS | SEC_READONLY | SEC_DEBUGGING;
  sect = bfd_make_section_with_flags (abfd, GNU_DEBUGLINK, flags);
  if (sect == ((void*)0))
    return ((void*)0);

  debuglink_size = strlen (filename) + 1;
  debuglink_size += 3;
  debuglink_size &= ~3;
  debuglink_size += 4;

  if (! bfd_set_section_size (abfd, sect, debuglink_size))

    return ((void*)0);

  return sect;
}
