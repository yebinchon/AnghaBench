
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;


 int MAP_SHARED ;
 int O_RDONLY ;
 int PROT_READ ;
 int close (int) ;
 int free (void*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int getpagesize () ;
 char* malloc (size_t) ;
 char* mmap (int *,size_t,int ,int ,int,int ) ;
 int open (char const*,int ) ;
 scalar_t__ read (int,char*,size_t) ;

__attribute__((used)) static const char *
slurp_file (const char *fn, size_t *size)
{




  const char *map;
  struct stat st;
  int fd = open (fn, O_RDONLY);

  if (fd < 0)
    return ((void*)0);
  if (fstat (fd, &st) < 0)
    return ((void*)0);
  *size = st.st_size;
  map = malloc (*size);
  if (!map || (size_t) read (fd, (char *)map, *size) != *size)
    {
      free ((void *)map);
      map = ((void*)0);
    }
  close (fd);
  return map;
}
