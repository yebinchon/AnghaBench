
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* obstack_fgets (int *,int *) ;
 int temporary_obstack ;

__attribute__((used)) static char *
tfgets (FILE *stream)
{
  return obstack_fgets (stream, &temporary_obstack);
}
