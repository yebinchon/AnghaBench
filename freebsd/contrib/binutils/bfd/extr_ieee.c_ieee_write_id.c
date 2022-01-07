
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int ,size_t) ;
 size_t bfd_bwrite (void*,int ,int *) ;
 int bfd_error_invalid_operation ;
 int bfd_get_filename (int *) ;
 int bfd_set_error (int ) ;
 int ieee_extension_length_1_enum ;
 int ieee_extension_length_2_enum ;
 int ieee_write_2bytes (int *,int) ;
 int ieee_write_byte (int *,int ) ;
 size_t strlen (char const*) ;
 int stub1 (int ,int ,size_t) ;

__attribute__((used)) static bfd_boolean
ieee_write_id (bfd *abfd, const char *id)
{
  size_t length = strlen (id);

  if (length <= 127)
    {
      if (! ieee_write_byte (abfd, (bfd_byte) length))
 return FALSE;
    }
  else if (length < 255)
    {
      if (! ieee_write_byte (abfd, ieee_extension_length_1_enum)
   || ! ieee_write_byte (abfd, (bfd_byte) length))
 return FALSE;
    }
  else if (length < 65535)
    {
      if (! ieee_write_byte (abfd, ieee_extension_length_2_enum)
   || ! ieee_write_2bytes (abfd, (int) length))
 return FALSE;
    }
  else
    {
      (*_bfd_error_handler)
 (_("%s: string too long (%d chars, max 65535)"),
  bfd_get_filename (abfd), length);
      bfd_set_error (bfd_error_invalid_operation);
      return FALSE;
    }

  if (bfd_bwrite ((void *) id, (bfd_size_type) length, abfd) != length)
    return FALSE;
  return TRUE;
}
