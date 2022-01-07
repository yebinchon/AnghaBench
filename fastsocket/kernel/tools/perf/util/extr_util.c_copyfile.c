
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;


 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 int close (int) ;
 int creat (char const*,int) ;
 void* mmap (int *,scalar_t__,int ,int ,int,int ) ;
 int munmap (void*,scalar_t__) ;
 int open (char const*,int ) ;
 int slow_copyfile (char const*,char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int unlink (char const*) ;
 scalar_t__ write (int,void*,scalar_t__) ;

int copyfile(const char *from, const char *to)
{
 int fromfd, tofd;
 struct stat st;
 void *addr;
 int err = -1;

 if (stat(from, &st))
  goto out;

 if (st.st_size == 0)
  return slow_copyfile(from, to);

 fromfd = open(from, O_RDONLY);
 if (fromfd < 0)
  goto out;

 tofd = creat(to, 0755);
 if (tofd < 0)
  goto out_close_from;

 addr = mmap(((void*)0), st.st_size, PROT_READ, MAP_PRIVATE, fromfd, 0);
 if (addr == MAP_FAILED)
  goto out_close_to;

 if (write(tofd, addr, st.st_size) == st.st_size)
  err = 0;

 munmap(addr, st.st_size);
out_close_to:
 close(tofd);
 if (err)
  unlink(to);
out_close_from:
 close(fromfd);
out:
 return err;
}
