
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct hostfs_iattr {int ia_valid; int ia_uid; int ia_gid; struct timespec ia_mtime; struct timespec ia_atime; int ia_size; int ia_mode; } ;


 int HOSTFS_ATTR_ATIME ;
 int HOSTFS_ATTR_ATIME_SET ;
 int HOSTFS_ATTR_GID ;
 int HOSTFS_ATTR_MODE ;
 int HOSTFS_ATTR_MTIME ;
 int HOSTFS_ATTR_MTIME_SET ;
 int HOSTFS_ATTR_SIZE ;
 int HOSTFS_ATTR_UID ;
 scalar_t__ chmod (char const*,int ) ;
 scalar_t__ chown (char const*,int,int) ;
 int errno ;
 scalar_t__ fchmod (int,int ) ;
 scalar_t__ fchown (int,int,int) ;
 scalar_t__ ftruncate (int,int ) ;
 scalar_t__ futimes (int,struct timeval*) ;
 int stat_file (char const*,int *,int *,int *,int *,int *,int *,struct timespec*,struct timespec*,int *,int *,int *,int) ;
 scalar_t__ truncate (char const*,int ) ;
 scalar_t__ utimes (char const*,struct timeval*) ;

int set_attr(const char *file, struct hostfs_iattr *attrs, int fd)
{
 struct timeval times[2];
 struct timespec atime_ts, mtime_ts;
 int err, ma;

 if (attrs->ia_valid & HOSTFS_ATTR_MODE) {
  if (fd >= 0) {
   if (fchmod(fd, attrs->ia_mode) != 0)
    return (-errno);
  } else if (chmod(file, attrs->ia_mode) != 0) {
   return -errno;
  }
 }
 if (attrs->ia_valid & HOSTFS_ATTR_UID) {
  if (fd >= 0) {
   if (fchown(fd, attrs->ia_uid, -1))
    return -errno;
  } else if (chown(file, attrs->ia_uid, -1)) {
   return -errno;
  }
 }
 if (attrs->ia_valid & HOSTFS_ATTR_GID) {
  if (fd >= 0) {
   if (fchown(fd, -1, attrs->ia_gid))
    return -errno;
  } else if (chown(file, -1, attrs->ia_gid)) {
   return -errno;
  }
 }
 if (attrs->ia_valid & HOSTFS_ATTR_SIZE) {
  if (fd >= 0) {
   if (ftruncate(fd, attrs->ia_size))
    return -errno;
  } else if (truncate(file, attrs->ia_size)) {
   return -errno;
  }
 }






 ma = (HOSTFS_ATTR_ATIME_SET | HOSTFS_ATTR_MTIME_SET);
 if (attrs->ia_valid & ma) {
  err = stat_file(file, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
    &atime_ts, &mtime_ts, ((void*)0), ((void*)0), ((void*)0), fd);
  if (err != 0)
   return err;

  times[0].tv_sec = atime_ts.tv_sec;
  times[0].tv_usec = atime_ts.tv_nsec / 1000;
  times[1].tv_sec = mtime_ts.tv_sec;
  times[1].tv_usec = mtime_ts.tv_nsec / 1000;

  if (attrs->ia_valid & HOSTFS_ATTR_ATIME_SET) {
   times[0].tv_sec = attrs->ia_atime.tv_sec;
   times[0].tv_usec = attrs->ia_atime.tv_nsec / 1000;
  }
  if (attrs->ia_valid & HOSTFS_ATTR_MTIME_SET) {
   times[1].tv_sec = attrs->ia_mtime.tv_sec;
   times[1].tv_usec = attrs->ia_mtime.tv_nsec / 1000;
  }

  if (fd >= 0) {
   if (futimes(fd, times) != 0)
    return -errno;
  } else if (utimes(file, times) != 0) {
   return -errno;
  }
 }


 if (attrs->ia_valid & (HOSTFS_ATTR_ATIME | HOSTFS_ATTR_MTIME)) {
  err = stat_file(file, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
    &attrs->ia_atime, &attrs->ia_mtime, ((void*)0),
    ((void*)0), ((void*)0), fd);
  if (err != 0)
   return err;
 }
 return 0;
}
