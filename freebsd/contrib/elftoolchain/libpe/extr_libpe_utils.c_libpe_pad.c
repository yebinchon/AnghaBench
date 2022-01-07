
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int pe_fd; } ;
typedef TYPE_1__ PE ;


 int EIO ;
 int errno ;
 int memset (char*,int ,int) ;
 scalar_t__ write (int ,char*,size_t) ;

int
libpe_pad(PE *pe, size_t pad)
{
 char tmp[128];
 size_t s;

 memset(tmp, 0, sizeof(tmp));
 for (; pad > 0; pad -= s) {
  s = pad > sizeof(tmp) ? sizeof(tmp) : pad;
  if (write(pe->pe_fd, tmp, s) != (ssize_t) s) {
   errno = EIO;
   return (-1);
  }
 }

 return (0);
}
