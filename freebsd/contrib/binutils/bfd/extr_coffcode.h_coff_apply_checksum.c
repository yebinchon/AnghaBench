
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int SEEK_SET ;
 int TRUE ;
 int bfd_bwrite (unsigned int*,int ,int *) ;
 scalar_t__ bfd_seek (int *,int,int ) ;
 unsigned int coff_compute_checksum (int *) ;
 int coff_read_word (int *,int*) ;
 int peheader ;
 unsigned int pelength ;

__attribute__((used)) static bfd_boolean
coff_apply_checksum (bfd *abfd)
{
  unsigned int computed;
  unsigned int checksum = 0;

  if (bfd_seek (abfd, 0x3c, SEEK_SET) != 0)
    return FALSE;

  if (!coff_read_word (abfd, &peheader))
    return FALSE;

  if (bfd_seek (abfd, peheader + 0x58, SEEK_SET) != 0)
    return FALSE;

  checksum = 0;
  bfd_bwrite (&checksum, (bfd_size_type) 4, abfd);

  if (bfd_seek (abfd, peheader, SEEK_SET) != 0)
    return FALSE;

  computed = coff_compute_checksum (abfd);

  checksum = computed + pelength;

  if (bfd_seek (abfd, peheader + 0x58, SEEK_SET) != 0)
    return FALSE;

  bfd_bwrite (&checksum, (bfd_size_type) 4, abfd);

  return TRUE;
}
