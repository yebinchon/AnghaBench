
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int read (int,void*,int) ;

__attribute__((used)) static int
safe_read (int desc, void *ptr, int len)
{
  int left = len;
  while (left > 0) {
    int nchars = read (desc, ptr, left);
    if (nchars < 0)
      {




 return nchars;
      }
    if (nchars == 0)
      break;

    ptr = (char *) ptr + nchars;
    left -= nchars;
  }
  return len - left;
}
