
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;


 scalar_t__ fstat (int,struct stat*) ;

int fdmatch (int fd1, int fd2)
{
  struct stat sbuf1;
  struct stat sbuf2;

  if ((fstat (fd1, &sbuf1) == 0) &&
      (fstat (fd2, &sbuf2) == 0) &&
      (sbuf1.st_dev == sbuf2.st_dev) &&
      (sbuf1.st_ino == sbuf2.st_ino))
    {
      return (1);
    }
  else
    {
      return (0);
    }
}
