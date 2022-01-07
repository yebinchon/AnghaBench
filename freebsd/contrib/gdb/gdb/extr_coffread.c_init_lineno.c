
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int bfd_bread (char*,int,int *) ;
 scalar_t__ bfd_seek (int *,long,int ) ;
 int free_linetab () ;
 char* linetab ;
 long linetab_offset ;
 int linetab_size ;
 scalar_t__ local_linesz ;
 int memset (char*,int ,scalar_t__) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static int
init_lineno (bfd *abfd, long offset, int size)
{
  int val;

  linetab_offset = offset;
  linetab_size = size;

  free_linetab ();

  if (size == 0)
    return 0;

  if (bfd_seek (abfd, offset, 0) < 0)
    return -1;


  linetab = (char *) xmalloc (size + local_linesz);

  val = bfd_bread (linetab, size, abfd);
  if (val != size)
    return -1;


  memset (linetab + size, 0, local_linesz);

  return 0;
}
