
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_hdr {int * ar_name; } ;
typedef int bfd ;


 size_t ar_maxnamelen (int *) ;
 int ar_padchar (int *) ;
 int memcpy (int *,char const*,size_t) ;
 size_t strlen (char const*) ;
 void* strrchr (char const*,char) ;

void
bfd_bsd_truncate_arname (bfd *abfd, const char *pathname, char *arhdr)
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
      length = maxlen;
    }

  if (length < maxlen)
    (hdr->ar_name)[length] = ar_padchar (abfd);
}
