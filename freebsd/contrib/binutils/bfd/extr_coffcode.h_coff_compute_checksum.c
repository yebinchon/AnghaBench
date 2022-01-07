
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ file_ptr ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;


 int SEEK_SET ;
 scalar_t__ bfd_seek (int *,scalar_t__,int ) ;
 scalar_t__ coff_read_word (int *,unsigned int*) ;
 scalar_t__ pelength ;

__attribute__((used)) static unsigned int
coff_compute_checksum (bfd *abfd)
{
  bfd_boolean more_data;
  file_ptr filepos;
  unsigned int value;
  unsigned int total;

  total = 0;
  pelength = 0;
  filepos = (file_ptr) 0;

  do
    {
      if (bfd_seek (abfd, filepos, SEEK_SET) != 0)
 return 0;

      more_data = coff_read_word (abfd, &value);
      total += value;
      total = 0xffff & (total + (total >> 0x10));
      filepos += 2;
    }
  while (more_data);

  return (0xffff & (total + (total >> 0x10)));
}
