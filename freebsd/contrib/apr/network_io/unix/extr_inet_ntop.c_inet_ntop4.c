
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const apr_size_t ;


 int ENOSPC ;
 int errno ;

__attribute__((used)) static const char *
inet_ntop4(const unsigned char *src, char *dst, apr_size_t size)
{
 const apr_size_t MIN_SIZE = 16;
 int n = 0;
 char *next = dst;

 if (size < MIN_SIZE) {
     errno = ENOSPC;
     return ((void*)0);
 }
 do {
     unsigned char u = *src++;
     if (u > 99) {
  *next++ = '0' + u/100;
  u %= 100;
  *next++ = '0' + u/10;
  u %= 10;
     }
     else if (u > 9) {
  *next++ = '0' + u/10;
  u %= 10;
     }
     *next++ = '0' + u;
     *next++ = '.';
     n++;
 } while (n < 4);
 *--next = 0;
 return dst;
}
