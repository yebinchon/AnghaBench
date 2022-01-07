
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 scalar_t__ find_vdso_map (void**,void**) ;
 int free (char*) ;
 char* memdup (void*,size_t) ;
 int mkstemp (char*) ;
 char* vdso_file ;
 int vdso_found ;
 scalar_t__ write (int,char*,size_t) ;

__attribute__((used)) static char *get_file(void)
{
 char *vdso = ((void*)0);
 char *buf = ((void*)0);
 void *start, *end;
 size_t size;
 int fd;

 if (vdso_found)
  return vdso_file;

 if (find_vdso_map(&start, &end))
  return ((void*)0);

 size = end - start;

 buf = memdup(start, size);
 if (!buf)
  return ((void*)0);

 fd = mkstemp(vdso_file);
 if (fd < 0)
  goto out;

 if (size == (size_t) write(fd, buf, size))
  vdso = vdso_file;

 close(fd);

 out:
 free(buf);

 vdso_found = (vdso != ((void*)0));
 return vdso;
}
