
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symfile {int filename; } ;


 int strdup (char*) ;
 int symfilecnt ;
 struct symfile* symfilelist ;

__attribute__((used)) static struct symfile * add_new_file(char * filename)
{
 symfilelist[symfilecnt++].filename = strdup(filename);
 return &symfilelist[symfilecnt - 1];
}
