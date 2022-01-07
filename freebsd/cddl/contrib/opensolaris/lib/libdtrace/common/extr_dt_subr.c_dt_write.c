
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int dtrace_hdl_t ;


 int dt_set_errno (int *,int ) ;
 int errno ;
 int write (int,void const*,int) ;

ssize_t
dt_write(dtrace_hdl_t *dtp, int fd, const void *buf, size_t n)
{
 ssize_t resid = n;
 ssize_t len;

 while (resid != 0) {
  if ((len = write(fd, buf, resid)) <= 0)
   break;

  resid -= len;
  buf = (char *)buf + len;
 }

 if (resid == n && n != 0)
  return (dt_set_errno(dtp, errno));

 return (n - resid);
}
