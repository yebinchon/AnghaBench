
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int write (int,char const*,int) ;

int
xwrite(int fd, const char *buf, int nbytes)
{
 int ntry;
 int i;
 int n;

 n = nbytes;
 ntry = 0;
 for (;;) {
  i = write(fd, buf, n);
  if (i > 0) {
   if ((n -= i) <= 0)
    return nbytes;
   buf += i;
   ntry = 0;
  } else if (i == 0) {
   if (++ntry > 10)
    return nbytes - n;
  } else if (errno != EINTR) {
   return -1;
  }
 }
}
