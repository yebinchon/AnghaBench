
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_size_type ;
typedef char bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_3__ {int size; int filepos; } ;
typedef TYPE_1__ asection ;


 int BFD_ASSERT (int) ;
 int EOF ;
 int FALSE ;
 void* HEX2 (char*) ;
 int SEEK_SET ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *) ;
 int bfd_bread (char*,int,int *) ;
 int bfd_error_bad_value ;
 char* bfd_realloc (char*,int) ;
 scalar_t__ bfd_seek (int *,int ,int ) ;
 int bfd_set_error (int ) ;
 int free (char*) ;
 int ihex_get_byte (int *,int *) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int *) ;

__attribute__((used)) static bfd_boolean
ihex_read_section (bfd *abfd, asection *section, bfd_byte *contents)
{
  int c;
  bfd_byte *p;
  bfd_byte *buf = ((void*)0);
  size_t bufsize;
  bfd_boolean error;

  if (bfd_seek (abfd, section->filepos, SEEK_SET) != 0)
    goto error_return;

  p = contents;
  bufsize = 0;
  error = FALSE;
  while ((c = ihex_get_byte (abfd, &error)) != EOF)
    {
      char hdr[8];
      unsigned int len;
      unsigned int type;
      unsigned int i;

      if (c == '\r' || c == '\n')
 continue;



      BFD_ASSERT (c == ':');

      if (bfd_bread (hdr, (bfd_size_type) 8, abfd) != 8)
 goto error_return;

      len = HEX2 (hdr);
      type = HEX2 (hdr + 6);


      if (type != 0)
 {
   (*_bfd_error_handler)
     (_("%B: internal error in ihex_read_section"), abfd);
   bfd_set_error (bfd_error_bad_value);
   goto error_return;
 }

      if (len * 2 > bufsize)
 {
   buf = bfd_realloc (buf, (bfd_size_type) len * 2);
   if (buf == ((void*)0))
     goto error_return;
   bufsize = len * 2;
 }

      if (bfd_bread (buf, (bfd_size_type) len * 2, abfd) != len * 2)
 goto error_return;

      for (i = 0; i < len; i++)
 *p++ = HEX2 (buf + 2 * i);
      if ((bfd_size_type) (p - contents) >= section->size)
 {

   if (buf != ((void*)0))
     free (buf);
   return TRUE;
 }


      if (bfd_bread (buf, (bfd_size_type) 2, abfd) != 2)
 goto error_return;
    }

  if ((bfd_size_type) (p - contents) < section->size)
    {
      (*_bfd_error_handler)
 (_("%B: bad section length in ihex_read_section"), abfd);
      bfd_set_error (bfd_error_bad_value);
      goto error_return;
    }

  if (buf != ((void*)0))
    free (buf);

  return TRUE;

 error_return:
  if (buf != ((void*)0))
    free (buf);
  return FALSE;
}
