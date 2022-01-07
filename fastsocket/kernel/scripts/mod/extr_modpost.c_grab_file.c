
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {unsigned long st_size; } ;


 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 int PROT_WRITE ;
 int close (int) ;
 scalar_t__ fstat (int,struct stat*) ;
 void* mmap (int *,unsigned long,int,int ,int,int ) ;
 int open (char const*,int ) ;

void *grab_file(const char *filename, unsigned long *size)
{
 struct stat st;
 void *map;
 int fd;

 fd = open(filename, O_RDONLY);
 if (fd < 0 || fstat(fd, &st) != 0)
  return ((void*)0);

 *size = st.st_size;
 map = mmap(((void*)0), *size, PROT_READ|PROT_WRITE, MAP_PRIVATE, fd, 0);
 close(fd);

 if (map == MAP_FAILED)
  return ((void*)0);
 return map;
}
