
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ TRY_EMPTY_VM_SPACE ;
 void* mmap (void*,size_t,int,int ,int,int ) ;
 int munmap (void*,size_t) ;

__attribute__((used)) static void *
hpux_gt_pch_get_address (size_t size, int fd)
{
  void *addr;

  addr = mmap ((void *)TRY_EMPTY_VM_SPACE, size, PROT_READ | PROT_WRITE,
        MAP_PRIVATE, fd, 0);


  if (addr == (void *) MAP_FAILED)
    return ((void*)0);

  munmap (addr, size);

  return addr;
}
