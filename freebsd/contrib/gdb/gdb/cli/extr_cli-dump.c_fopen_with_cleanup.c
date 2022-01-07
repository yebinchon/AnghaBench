
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char*,char const*) ;
 int make_cleanup_fclose (int *) ;
 int perror_with_name (char*) ;

FILE *
fopen_with_cleanup (char *filename, const char *mode)
{
  FILE *file = fopen (filename, mode);
  if (file == ((void*)0))
    perror_with_name (filename);
  make_cleanup_fclose (file);
  return file;
}
