
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_ptr ;
typedef int bfd_size_type ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;


 scalar_t__ FALSE ;
 int HEX (char*) ;
 int ISHEX (char) ;
 int MAXCHUNK ;
 int SEEK_SET ;
 scalar_t__ TRUE ;
 unsigned int bfd_bread (char*,int ,int *) ;
 scalar_t__ bfd_seek (int *,int ,int ) ;

__attribute__((used)) static bfd_boolean
pass_over (bfd *abfd, bfd_boolean (*func) (bfd *, int, char *))
{
  unsigned int chars_on_line;
  bfd_boolean eof = FALSE;


  if (bfd_seek (abfd, (file_ptr) 0, SEEK_SET) != 0)
    return FALSE;
  while (! eof)
    {
      char src[MAXCHUNK];
      char type;


      eof = (bfd_boolean) (bfd_bread (src, (bfd_size_type) 1, abfd) != 1);
      while (*src != '%' && !eof)
 eof = (bfd_boolean) (bfd_bread (src, (bfd_size_type) 1, abfd) != 1);

      if (eof)
 break;


      if (bfd_bread (src, (bfd_size_type) 5, abfd) != 5)
 return FALSE;

      type = src[2];

      if (!ISHEX (src[0]) || !ISHEX (src[1]))
 break;


      chars_on_line = HEX (src) - 5;

      if (chars_on_line >= MAXCHUNK)
 return FALSE;

      if (bfd_bread (src, (bfd_size_type) chars_on_line, abfd) != chars_on_line)
 return FALSE;


      src[chars_on_line] = 0;

      if (!func (abfd, type, src))
 return FALSE;
    }

  return TRUE;
}
