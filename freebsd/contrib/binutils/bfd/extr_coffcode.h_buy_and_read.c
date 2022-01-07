
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_ptr ;
typedef int bfd_size_type ;
typedef int bfd ;


 int SEEK_SET ;
 void* bfd_alloc (int *,int ) ;
 int bfd_bread (void*,int ,int *) ;
 scalar_t__ bfd_seek (int *,int ,int ) ;

__attribute__((used)) static void *
buy_and_read (bfd *abfd, file_ptr where, bfd_size_type size)
{
  void * area = bfd_alloc (abfd, size);

  if (!area)
    return (((void*)0));
  if (bfd_seek (abfd, where, SEEK_SET) != 0
      || bfd_bread (area, size, abfd) != size)
    return (((void*)0));
  return (area);
}
