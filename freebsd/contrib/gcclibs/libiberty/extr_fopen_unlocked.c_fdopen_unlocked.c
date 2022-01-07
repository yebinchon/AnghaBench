
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fdopen (int,char const*) ;
 int unlock_1 (int * const) ;

FILE *
fdopen_unlocked (int fildes, const char *mode)
{
  FILE *const fp = fdopen (fildes, mode);
  unlock_1 (fp);
  return fp;
}
