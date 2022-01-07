
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char const*,char const*) ;
 int unlock_1 (int * const) ;

FILE *
fopen_unlocked (const char *path, const char *mode)
{
  FILE *const fp = fopen (path, mode);
  unlock_1 (fp);
  return fp;
}
