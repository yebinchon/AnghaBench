
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int XLOG_WARNING ;
 int clocktime (int *) ;
 int close (int) ;
 scalar_t__ errno ;
 int plog (int ,char*,...) ;
 int read (int,void*,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static char *
fgets_timed(char *s, int size, int rdfd, int secs)
{
  fd_set fds;
  struct timeval timeo;
  time_t start, now;
  int rval=0, i=0;

  if (!s || size < 0 || rdfd < 0)
    return 0;

  s[0] = '\0';
  if (size == 0)
    return s;

  start = clocktime(((void*)0));
  while (s[i] != '\n' && i < size-1) {
    s[i+1] = '\0';


    rval = read(rdfd, (void *)(s+i), 1);
    if (rval == 1) {
      if (s[i] == 0) {
        rval = 0;
        break;
      }
      i++;
      continue;
    } else if (rval == 0) {
      break;
    } else if (rval < 0 && errno != EAGAIN && errno != EINTR) {
      plog(XLOG_WARNING, "fgets_timed read error: %m");
      break;
    }

    timeo.tv_usec = 0;
    now = clocktime(((void*)0)) - start;
    if (secs <= 0)
      timeo.tv_sec = 0;
    else if (now < secs)
      timeo.tv_sec = secs - now;
    else {

      plog(XLOG_WARNING, "executable map read timed out (> %d secs)", secs);
      rval = -1;
      break;
    }

    FD_ZERO(&fds);
    FD_SET(rdfd, &fds);

    rval = select(rdfd+1, &fds, ((void*)0), ((void*)0), &timeo);
    if (rval < 0) {

      plog(XLOG_WARNING, "fgets_timed select error: %m");
      if (errno == EINTR)
        continue;
      rval = -1;
      break;
    } else if (rval == 0) {

      plog(XLOG_WARNING, "executable map read timed out (> %d secs)", secs);
      rval = -1;
      break;
    }
  }

  if (rval > 0)
    return s;

  close(rdfd);
  return (rval == 0 ? s : 0);
}
