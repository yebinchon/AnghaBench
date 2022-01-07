
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symfile {int filename; } ;


 scalar_t__ strcmp (int ,char*) ;
 int symfilecnt ;
 struct symfile* symfilelist ;

__attribute__((used)) static struct symfile * filename_exist(char * filename)
{
 int i;
 for (i=0; i < symfilecnt; i++)
  if (strcmp(symfilelist[i].filename, filename) == 0)
   return &symfilelist[i];
 return ((void*)0);
}
