
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {long st_size; } ;


 int fprintf (int ,char*,long) ;
 int fstat (int,struct stat*) ;
 int stderr ;

size_t get_filesize (int fd)
{
 int err;
 struct stat stat;

 err = fstat (fd, &stat);
 fprintf (stderr, "filesize: %ld\n", err < 0 ? (long)err : stat.st_size);
 if (err < 0)
  return err;
 return (size_t) stat.st_size;
}
