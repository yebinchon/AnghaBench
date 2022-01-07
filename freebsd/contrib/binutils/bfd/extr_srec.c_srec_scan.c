
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int flagword ;
typedef int file_ptr ;
typedef int bfd_vma ;
typedef int bfd_size_type ;
typedef char bfd_byte ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_14__ {int start_address; } ;
typedef TYPE_1__ bfd ;
struct TYPE_15__ {int vma; int size; int lma; int filepos; } ;
typedef TYPE_2__ asection ;


 int EOF ;
 scalar_t__ FALSE ;
 int HEX (char*) ;
 int ISHEX (char) ;
 int ISSPACE (int) ;
 int NIBBLE (int) ;
 int SEC_ALLOC ;
 int SEC_HAS_CONTENTS ;
 int SEC_LOAD ;
 int SEEK_SET ;
 scalar_t__ TRUE ;
 char* bfd_alloc (TYPE_1__*,int) ;
 unsigned int bfd_bread (char*,int,TYPE_1__*) ;
 int bfd_count_sections (TYPE_1__*) ;
 TYPE_2__* bfd_make_section_with_flags (TYPE_1__*,char*,int) ;
 char* bfd_malloc (int) ;
 char* bfd_realloc (char*,int ) ;
 scalar_t__ bfd_seek (TYPE_1__*,int ,int ) ;
 int bfd_tell (TYPE_1__*) ;
 int free (char*) ;
 int sprintf (char*,char*,int ) ;
 int srec_bad_byte (TYPE_1__*,unsigned int,int,scalar_t__) ;
 int srec_get_byte (TYPE_1__*,scalar_t__*) ;
 int srec_new_symbol (TYPE_1__*,char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static bfd_boolean
srec_scan (bfd *abfd)
{
  int c;
  unsigned int lineno = 1;
  bfd_boolean error = FALSE;
  bfd_byte *buf = ((void*)0);
  size_t bufsize = 0;
  asection *sec = ((void*)0);
  char *symbuf = ((void*)0);

  if (bfd_seek (abfd, (file_ptr) 0, SEEK_SET) != 0)
    goto error_return;

  while ((c = srec_get_byte (abfd, &error)) != EOF)
    {


      if (c != 'S' && c != '\r' && c != '\n')
 sec = ((void*)0);

      switch (c)
 {
 default:
   srec_bad_byte (abfd, lineno, c, error);
   goto error_return;

 case '\n':
   ++lineno;
   break;

 case '\r':
   break;

 case '$':

   while ((c = srec_get_byte (abfd, &error)) != '\n'
   && c != EOF)
     ;
   if (c == EOF)
     {
       srec_bad_byte (abfd, lineno, c, error);
       goto error_return;
     }

   ++lineno;
   break;

 case ' ':
   do
     {
       bfd_size_type alc;
       char *p, *symname;
       bfd_vma symval;


       while ((c = srec_get_byte (abfd, &error)) != EOF
       && (c == ' ' || c == '\t'))
  ;

       if (c == '\n' || c == '\r')
  break;

       if (c == EOF)
  {
    srec_bad_byte (abfd, lineno, c, error);
    goto error_return;
  }

       alc = 10;
       symbuf = bfd_malloc (alc + 1);
       if (symbuf == ((void*)0))
  goto error_return;

       p = symbuf;

       *p++ = c;
       while ((c = srec_get_byte (abfd, &error)) != EOF
       && ! ISSPACE (c))
  {
    if ((bfd_size_type) (p - symbuf) >= alc)
      {
        char *n;

        alc *= 2;
        n = bfd_realloc (symbuf, alc + 1);
        if (n == ((void*)0))
   goto error_return;
        p = n + (p - symbuf);
        symbuf = n;
      }

    *p++ = c;
  }

       if (c == EOF)
  {
    srec_bad_byte (abfd, lineno, c, error);
    goto error_return;
  }

       *p++ = '\0';
       symname = bfd_alloc (abfd, (bfd_size_type) (p - symbuf));
       if (symname == ((void*)0))
  goto error_return;
       strcpy (symname, symbuf);
       free (symbuf);
       symbuf = ((void*)0);

       while ((c = srec_get_byte (abfd, &error)) != EOF
       && (c == ' ' || c == '\t'))
  ;
       if (c == EOF)
  {
    srec_bad_byte (abfd, lineno, c, error);
    goto error_return;
  }


       if (c == '$')
  {
    c = srec_get_byte (abfd, &error);
    if (c == EOF)
      {
        srec_bad_byte (abfd, lineno, c, error);
        goto error_return;
      }
  }

       symval = 0;
       while (ISHEX (c))
  {
    symval <<= 4;
    symval += NIBBLE (c);
    c = srec_get_byte (abfd, &error);
  }

       if (! srec_new_symbol (abfd, symname, symval))
  goto error_return;
     }
   while (c == ' ' || c == '\t')
     ;

   if (c == '\n')
     ++lineno;
   else if (c != '\r')
     {
       srec_bad_byte (abfd, lineno, c, error);
       goto error_return;
     }

   break;

 case 'S':
   {
     file_ptr pos;
     char hdr[3];
     unsigned int bytes;
     bfd_vma address;
     bfd_byte *data;



     pos = bfd_tell (abfd) - 1;

     if (bfd_bread (hdr, (bfd_size_type) 3, abfd) != 3)
       goto error_return;

     if (! ISHEX (hdr[1]) || ! ISHEX (hdr[2]))
       {
  if (! ISHEX (hdr[1]))
    c = hdr[1];
  else
    c = hdr[2];
  srec_bad_byte (abfd, lineno, c, error);
  goto error_return;
       }

     bytes = HEX (hdr + 1);
     if (bytes * 2 > bufsize)
       {
  if (buf != ((void*)0))
    free (buf);
  buf = bfd_malloc ((bfd_size_type) bytes * 2);
  if (buf == ((void*)0))
    goto error_return;
  bufsize = bytes * 2;
       }

     if (bfd_bread (buf, (bfd_size_type) bytes * 2, abfd) != bytes * 2)
       goto error_return;


     --bytes;

     address = 0;
     data = buf;
     switch (hdr[0])
       {
       case '0':
       case '5':


  sec = ((void*)0);
  break;

       case '3':
  address = HEX (data);
  data += 2;
  --bytes;

       case '2':
  address = (address << 8) | HEX (data);
  data += 2;
  --bytes;

       case '1':
  address = (address << 8) | HEX (data);
  data += 2;
  address = (address << 8) | HEX (data);
  data += 2;
  bytes -= 2;

  if (sec != ((void*)0)
      && sec->vma + sec->size == address)
    {


      sec->size += bytes;
    }
  else
    {
      char secbuf[20];
      char *secname;
      bfd_size_type amt;
      flagword flags;

      sprintf (secbuf, ".sec%d", bfd_count_sections (abfd) + 1);
      amt = strlen (secbuf) + 1;
      secname = bfd_alloc (abfd, amt);
      strcpy (secname, secbuf);
      flags = SEC_HAS_CONTENTS | SEC_LOAD | SEC_ALLOC;
      sec = bfd_make_section_with_flags (abfd, secname, flags);
      if (sec == ((void*)0))
        goto error_return;
      sec->vma = address;
      sec->lma = address;
      sec->size = bytes;
      sec->filepos = pos;
    }
  break;

       case '7':
  address = HEX (data);
  data += 2;

       case '8':
  address = (address << 8) | HEX (data);
  data += 2;

       case '9':
  address = (address << 8) | HEX (data);
  data += 2;
  address = (address << 8) | HEX (data);
  data += 2;


  abfd->start_address = address;

  if (buf != ((void*)0))
    free (buf);

  return TRUE;
       }
   }
   break;
 }
    }

  if (error)
    goto error_return;

  if (buf != ((void*)0))
    free (buf);

  return TRUE;

 error_return:
  if (symbuf != ((void*)0))
    free (symbuf);
  if (buf != ((void*)0))
    free (buf);
  return FALSE;
}
