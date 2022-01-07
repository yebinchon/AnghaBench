
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int putc (char,int *) ;

__attribute__((used)) static void
indent (FILE *e, int c)
{
  int i;

  for (i = 0; i < c; i++)
    putc (' ', e);
}
