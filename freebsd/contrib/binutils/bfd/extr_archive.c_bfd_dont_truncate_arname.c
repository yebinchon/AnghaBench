
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_hdr {int * ar_name; } ;
typedef int bfd ;


 int BFD_TRADITIONAL_FORMAT ;
 int abort () ;
 size_t ar_maxnamelen (int *) ;
 int ar_padchar (int *) ;
 int bfd_bsd_truncate_arname (int *,char const*,char*) ;
 int bfd_get_file_flags (int *) ;
 int memcpy (int *,char const*,size_t) ;
 char* normalize (int *,char const*) ;
 size_t strlen (char const*) ;

void
bfd_dont_truncate_arname (bfd *abfd, const char *pathname, char *arhdr)
{





  struct ar_hdr *hdr = (struct ar_hdr *) arhdr;
  size_t length;
  const char *filename;
  size_t maxlen = ar_maxnamelen (abfd);

  if ((bfd_get_file_flags (abfd) & BFD_TRADITIONAL_FORMAT) != 0)
    {
      bfd_bsd_truncate_arname (abfd, pathname, arhdr);
      return;
    }

  filename = normalize (abfd, pathname);
  if (filename == ((void*)0))
    {

      abort ();
    }

  length = strlen (filename);

  if (length <= maxlen)
    memcpy (hdr->ar_name, filename, length);


  if (length < maxlen
      || (length == maxlen && length < sizeof hdr->ar_name))
    (hdr->ar_name)[length] = ar_padchar (abfd);
}
