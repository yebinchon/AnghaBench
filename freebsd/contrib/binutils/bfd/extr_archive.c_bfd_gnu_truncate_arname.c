
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_hdr {char* ar_name; } ;
typedef int bfd ;


 size_t ar_maxnamelen (int *) ;
 char ar_padchar (int *) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 void* strrchr (char const*,char) ;

void
bfd_gnu_truncate_arname (bfd *abfd, const char *pathname, char *arhdr)
{
  struct ar_hdr *hdr = (struct ar_hdr *) arhdr;
  size_t length;
  const char *filename = strrchr (pathname, '/');
  size_t maxlen = ar_maxnamelen (abfd);
  if (filename == ((void*)0))
    filename = pathname;
  else
    ++filename;

  length = strlen (filename);

  if (length <= maxlen)
    memcpy (hdr->ar_name, filename, length);
  else
    {
      memcpy (hdr->ar_name, filename, maxlen);
      if ((filename[length - 2] == '.') && (filename[length - 1] == 'o'))
 {
   hdr->ar_name[maxlen - 2] = '.';
   hdr->ar_name[maxlen - 1] = 'o';
 }
      length = maxlen;
    }

  if (length < 16)
    (hdr->ar_name)[length] = ar_padchar (abfd);
}
