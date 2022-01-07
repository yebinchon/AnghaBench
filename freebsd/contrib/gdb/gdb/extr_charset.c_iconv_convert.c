
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_iconv {int dummy; } ;


 int cached_iconv_convert (struct cached_iconv*,int,int*) ;

__attribute__((used)) static int
iconv_convert (void *baton, int from_char, int *to_char)
{
  struct cached_iconv *ci = baton;
  return cached_iconv_convert (ci, from_char, to_char);
}
