
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct utimbuf {int modtime; int actime; } ;
struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct TYPE_3__ {int tv_nsec; int tv_sec; } ;
struct stat {int st_mtime; int st_atime; TYPE_2__ MTIME; TYPE_1__ ATIME; } ;


 int utime (char const*,struct utimbuf*) ;
 int utimes (char const*,struct timeval*) ;

int
elftc_set_timestamps(const char *fn, struct stat *sb)
{
 struct utimbuf utb;

 utb.actime = sb->st_atime;
 utb.modtime = sb->st_mtime;
 return (utime(fn, &utb));

}
