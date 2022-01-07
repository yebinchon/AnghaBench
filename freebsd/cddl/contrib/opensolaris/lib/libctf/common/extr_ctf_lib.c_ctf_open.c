
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctf_file_t ;


 int O_RDONLY ;
 int close (int) ;
 int * ctf_fdopen (int,int*) ;
 int errno ;
 int open64 (char const*,int ) ;

ctf_file_t *
ctf_open(const char *filename, int *errp)
{
 ctf_file_t *fp;
 int fd;

 if ((fd = open64(filename, O_RDONLY)) == -1) {
  if (errp != ((void*)0))
   *errp = errno;
  return (((void*)0));
 }

 fp = ctf_fdopen(fd, errp);
 (void) close(fd);
 return (fp);
}
