
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat64 {int st_mode; int st_rdev; } ;


 int OS_TYPE_BLOCKDEV ;
 int OS_TYPE_CHARDEV ;
 int OS_TYPE_DIR ;
 int OS_TYPE_FIFO ;
 int OS_TYPE_FILE ;
 int OS_TYPE_SOCK ;
 int OS_TYPE_SYMLINK ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int errno ;
 scalar_t__ lstat64 (char const*,struct stat64*) ;
 int major (int ) ;
 int minor (int ) ;

int file_type(const char *path, int *maj, int *min)
{
  struct stat64 buf;

 if (lstat64(path, &buf) < 0)
  return -errno;




 if (maj != ((void*)0))
  *maj = major(buf.st_rdev);
 if (min != ((void*)0))
  *min = minor(buf.st_rdev);

 if (S_ISDIR(buf.st_mode))
  return OS_TYPE_DIR;
 else if (S_ISLNK(buf.st_mode))
  return OS_TYPE_SYMLINK;
 else if (S_ISCHR(buf.st_mode))
  return OS_TYPE_CHARDEV;
 else if (S_ISBLK(buf.st_mode))
  return OS_TYPE_BLOCKDEV;
 else if (S_ISFIFO(buf.st_mode))
  return OS_TYPE_FIFO;
 else if (S_ISSOCK(buf.st_mode))
  return OS_TYPE_SOCK;
 else return OS_TYPE_FILE;
}
