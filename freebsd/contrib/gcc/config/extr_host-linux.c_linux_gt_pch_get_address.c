
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MAP_ANON ;
 scalar_t__ MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_NONE ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ TRY_EMPTY_VM_SPACE ;
 scalar_t__ atoi (char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (char*,int,int,int *) ;
 void* mmap (void*,size_t,int,int,int,int ) ;
 int munmap (void*,size_t) ;

__attribute__((used)) static void *
linux_gt_pch_get_address (size_t size, int fd)
{
  size_t buffer_size = 32 * 1024 * 1024;
  void *addr, *buffer;
  FILE *f;
  bool randomize_on;

  addr = mmap ((void *)TRY_EMPTY_VM_SPACE, size, PROT_READ | PROT_WRITE,
        MAP_PRIVATE, fd, 0);


  if (addr == (void *) MAP_FAILED)
    return ((void*)0);

  munmap (addr, size);


  if (TRY_EMPTY_VM_SPACE && addr == (void *) TRY_EMPTY_VM_SPACE)
    return addr;





  f = fopen ("/proc/sys/kernel/randomize_va_space", "r");
  if (f == ((void*)0))
    f = fopen ("/proc/sys/kernel/exec-shield-randomize", "r");
  randomize_on = 0;
  if (f != ((void*)0))
    {
      char buf[100];
      size_t c;

      c = fread (buf, 1, sizeof buf - 1, f);
      if (c > 0)
 {
   buf[c] = '\0';
   randomize_on = (atoi (buf) > 0);
 }
      fclose (f);
    }


  if (!randomize_on)
    return addr;


  buffer = mmap (0, buffer_size, PROT_NONE, MAP_PRIVATE | MAP_ANON, -1, 0);
  addr = mmap (0, size, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0);
  if (buffer != (void *) MAP_FAILED)
    munmap (buffer, buffer_size);
  if (addr == (void *) MAP_FAILED)
    return ((void*)0);
  munmap (addr, size);

  return addr;
}
