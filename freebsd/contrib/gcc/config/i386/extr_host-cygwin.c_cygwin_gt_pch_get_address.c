
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int fatal_error (char*) ;
 int ftruncate (int,size_t) ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 void* mmap (int *,size_t,int,int ,int,int ) ;
 int munmap (void*,size_t) ;

__attribute__((used)) static void *
cygwin_gt_pch_get_address (size_t sz, int fd)
{
  void *base;
  off_t p = lseek(fd, 0, SEEK_CUR);

  if (p == (off_t) -1)
    fatal_error ("can't get position in PCH file: %m");



  if ((size_t) p < sz)
  {
    if ( ftruncate (fd, sz) == -1 )
      fatal_error ("can't extend PCH file: %m");
  }

  base = mmap (((void*)0), sz, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0);

  if (base == MAP_FAILED)
    base = ((void*)0);
  else
    munmap (base, sz);

  if (lseek (fd, p, SEEK_SET) == (off_t) -1 )
    fatal_error ("can't set position in PCH file: %m");

  return base;
}
