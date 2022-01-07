
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;


 int MAP_ANONYMOUS ;
 scalar_t__ MAP_FAILED ;
 int MAP_PRIVATE ;
 int MIN (size_t,int ) ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SEEK_SET ;
 int SSIZE_MAX ;
 scalar_t__ lseek (int,size_t,int ) ;
 void* mmap (void*,size_t,int,int,int,size_t) ;
 int munmap (void*,size_t) ;
 scalar_t__ read (int,void*,int ) ;

__attribute__((used)) static int
hpux_gt_pch_use_address (void *base, size_t size, int fd, size_t offset)
{
  void *addr;




  if (size == 0)
    return -1;


  addr = mmap (base, size, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, offset);

  if (addr == base)
    return 1;

  if (addr != (void *) MAP_FAILED)
    munmap (addr, size);


  addr = mmap (base, size, PROT_READ | PROT_WRITE,
        MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

  if (addr != base)
    {
      if (addr != (void *) MAP_FAILED)
        munmap (addr, size);
      return -1;
    }

  if (lseek (fd, offset, SEEK_SET) == (off_t)-1)
    return -1;

  while (size)
    {
      ssize_t nbytes;

      nbytes = read (fd, base, MIN (size, SSIZE_MAX));
      if (nbytes <= 0)
        return -1;
      base = (char *) base + nbytes;
      size -= nbytes;
    }

  return 1;
}
