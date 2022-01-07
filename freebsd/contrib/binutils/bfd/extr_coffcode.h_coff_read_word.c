
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int bfd_bread (unsigned char*,int ,int *) ;
 unsigned int pelength ;

__attribute__((used)) static bfd_boolean
coff_read_word (bfd *abfd, unsigned int *value)
{
  unsigned char b[2];
  int status;

  status = bfd_bread (b, (bfd_size_type) 2, abfd);
  if (status < 1)
    {
      *value = 0;
      return FALSE;
    }

  if (status == 1)
    *value = (unsigned int) b[0];
  else
    *value = (unsigned int) (b[0] + (b[1] << 8));

  pelength += (unsigned int) status;

  return TRUE;
}
