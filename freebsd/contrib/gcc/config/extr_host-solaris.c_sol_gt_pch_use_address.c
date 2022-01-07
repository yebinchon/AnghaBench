
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOMEM ;
 scalar_t__ MAP_FAILED ;
 int MAP_FIXED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ errno ;
 size_t getpagesize () ;
 int mincore (char*,size_t,void*) ;
 void* mmap (void*,size_t,int,int,int,size_t) ;
 int munmap (void*,size_t) ;

__attribute__((used)) static int
sol_gt_pch_use_address (void *base, size_t size, int fd, size_t offset)
{
  void *addr;




  if (size == 0)
    return -1;

  addr = mmap (base, size, PROT_READ | PROT_WRITE, MAP_PRIVATE,
        fd, offset);




  if (addr != base)
    {
      size_t page_size = getpagesize();
      char one_byte;
      size_t i;

      if (addr != (void *) MAP_FAILED)
 munmap (addr, size);

      errno = 0;
      for (i = 0; i < size; i += page_size)
 if (mincore ((char *)base + i, page_size, (void *)&one_byte) == -1
     && errno == ENOMEM)
   continue;
 else
   break;

      if (i >= size)
 addr = mmap (base, size,
       PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_FIXED,
       fd, offset);
    }

  return addr == base ? 1 : -1;
}
