
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_section {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int FILE ;


 int FALSE ;
 int FOPEN_RB ;
 int TRUE ;
 unsigned long bfd_calc_gnu_debuglink_crc32 (unsigned long,unsigned char*,size_t) ;
 int bfd_error_invalid_operation ;
 int bfd_error_no_memory ;
 int bfd_error_system_call ;
 int bfd_put_32 (int *,unsigned long,char*) ;
 int bfd_set_error (int ) ;
 int bfd_set_section_contents (int *,struct bfd_section*,char*,int ,int) ;
 char* bfd_zmalloc (int) ;
 int fclose (int *) ;
 size_t fread (unsigned char*,int,int,int *) ;
 int free (char*) ;
 char* lbasename (char const*) ;
 int * real_fopen (char const*,int ) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

bfd_boolean
bfd_fill_in_gnu_debuglink_section (bfd *abfd,
       struct bfd_section *sect,
       const char *filename)
{
  bfd_size_type debuglink_size;
  unsigned long crc32;
  char * contents;
  bfd_size_type crc_offset;
  FILE * handle;
  static unsigned char buffer[8 * 1024];
  size_t count;

  if (abfd == ((void*)0) || sect == ((void*)0) || filename == ((void*)0))
    {
      bfd_set_error (bfd_error_invalid_operation);
      return FALSE;
    }







  handle = real_fopen (filename, FOPEN_RB);
  if (handle == ((void*)0))
    {
      bfd_set_error (bfd_error_system_call);
      return FALSE;
    }

  crc32 = 0;
  while ((count = fread (buffer, 1, sizeof buffer, handle)) > 0)
    crc32 = bfd_calc_gnu_debuglink_crc32 (crc32, buffer, count);
  fclose (handle);



  filename = lbasename (filename);

  debuglink_size = strlen (filename) + 1;
  debuglink_size += 3;
  debuglink_size &= ~3;
  debuglink_size += 4;

  contents = bfd_zmalloc (debuglink_size);
  if (contents == ((void*)0))
    {

      bfd_set_error (bfd_error_no_memory);
      return FALSE;
    }

  strcpy (contents, filename);
  crc_offset = debuglink_size - 4;

  bfd_put_32 (abfd, crc32, contents + crc_offset);

  if (! bfd_set_section_contents (abfd, sect, contents, 0, debuglink_size))
    {

      free (contents);
      return FALSE;
    }

  return TRUE;
}
