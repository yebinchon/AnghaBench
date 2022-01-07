
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int bfd_bread (char*,int,int *) ;
 long bfd_h_get_32 (int ,unsigned char*) ;
 scalar_t__ bfd_seek (int *,long,int ) ;
 int free_stringtab () ;
 int memcpy (char*,unsigned char*,int) ;
 char* stringtab ;
 int symfile_bfd ;
 scalar_t__ xmalloc (long) ;

__attribute__((used)) static int
init_stringtab (bfd *abfd, long offset)
{
  long length;
  int val;
  unsigned char lengthbuf[4];

  free_stringtab ();



  if (offset == 0)
    return 0;

  if (bfd_seek (abfd, offset, 0) < 0)
    return -1;

  val = bfd_bread ((char *) lengthbuf, sizeof lengthbuf, abfd);
  length = bfd_h_get_32 (symfile_bfd, lengthbuf);



  if (val != sizeof lengthbuf || length < sizeof lengthbuf)
    return 0;

  stringtab = (char *) xmalloc (length);


  memcpy (stringtab, lengthbuf, sizeof lengthbuf);
  if (length == sizeof length)
    return 0;

  val = bfd_bread (stringtab + sizeof lengthbuf, length - sizeof lengthbuf,
     abfd);
  if (val != length - sizeof lengthbuf || stringtab[length - 1] != '\0')
    return -1;

  return 0;
}
