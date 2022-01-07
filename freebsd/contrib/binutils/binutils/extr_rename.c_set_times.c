
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long utimbuf ;
struct timeval {long tv_sec; scalar_t__ tv_usec; } ;
struct stat {long st_atime; long st_mtime; } ;


 int _ (char*) ;
 int errno ;
 int non_fatal (int ,char const*,int ) ;
 int strerror (int ) ;
 int utime (char const*,long*) ;
 int utimes (char const*,struct timeval*) ;

void
set_times (const char *destination, const struct stat *statbuf)
{
  int result;

  {
    long tb[2];

    tb[0] = statbuf->st_atime;
    tb[1] = statbuf->st_mtime;
    result = utime (destination, tb);
  }

  if (result != 0)
    non_fatal (_("%s: cannot set time: %s"), destination, strerror (errno));
}
