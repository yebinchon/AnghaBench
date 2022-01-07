
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * freopen (char const*,char const*,int *) ;
 int unlock_1 (int * const) ;

FILE *
freopen_unlocked (const char *path, const char *mode, FILE *stream)
{
  FILE *const fp = freopen (path, mode, stream);
  unlock_1 (fp);
  return fp;
}
