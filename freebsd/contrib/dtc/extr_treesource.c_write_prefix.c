
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputc (char,int *) ;

__attribute__((used)) static void write_prefix(FILE *f, int level)
{
 int i;

 for (i = 0; i < level; i++)
  fputc('\t', f);
}
