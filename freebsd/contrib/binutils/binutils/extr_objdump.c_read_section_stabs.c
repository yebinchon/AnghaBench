
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_size_type ;
typedef int bfd ;
typedef int asection ;


 char* FALSE ;
 char* _ (char*) ;
 int bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int bfd_get_filename (int *) ;
 int * bfd_get_section_by_name (int *,char const*) ;
 int bfd_get_section_contents (int *,int *,char*,int ,int ) ;
 int bfd_section_size (int *,int *) ;
 int exit_status ;
 int free (char*) ;
 int non_fatal (char*,char const*,int ,int ) ;
 int printf (char*,char const*) ;
 char* xmalloc (int ) ;

__attribute__((used)) static char *
read_section_stabs (bfd *abfd, const char *sect_name, bfd_size_type *size_ptr)
{
  asection *stabsect;
  bfd_size_type size;
  char *contents;

  stabsect = bfd_get_section_by_name (abfd, sect_name);
  if (stabsect == ((void*)0))
    {
      printf (_("No %s section present\n\n"), sect_name);
      return FALSE;
    }

  size = bfd_section_size (abfd, stabsect);
  contents = xmalloc (size);

  if (! bfd_get_section_contents (abfd, stabsect, contents, 0, size))
    {
      non_fatal (_("Reading %s section of %s failed: %s"),
   sect_name, bfd_get_filename (abfd),
   bfd_errmsg (bfd_get_error ()));
      free (contents);
      exit_status = 1;
      return ((void*)0);
    }

  *size_ptr = size;

  return contents;
}
