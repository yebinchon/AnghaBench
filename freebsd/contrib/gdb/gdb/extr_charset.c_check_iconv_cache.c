
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charset {int dummy; } ;
struct cached_iconv {int dummy; } ;


 int EINVAL ;
 int errno ;

__attribute__((used)) static int
check_iconv_cache (struct cached_iconv *ci,
                   struct charset *from,
                   struct charset *to)
{
  errno = EINVAL;
  return -1;
}
