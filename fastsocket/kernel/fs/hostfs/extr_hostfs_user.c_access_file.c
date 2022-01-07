
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_OK ;
 int W_OK ;
 int X_OK ;
 scalar_t__ access (char*,int) ;
 int errno ;

int access_file(char *path, int r, int w, int x)
{
 int mode = 0;

 if (r)
  mode = R_OK;
 if (w)
  mode |= W_OK;
 if (x)
  mode |= X_OK;
 if (access(path, mode) != 0)
  return -errno;
 else return 0;
}
