
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fwrite (char const*,int,int,int *) ;
 int putc (char,int *) ;

__attribute__((used)) static void
print_context_function (FILE *out, char const *function)
{
  int i;
  putc (' ', out);
  for (i = 0; i < 40 && function[i] != '\n'; i++)
    continue;
  fwrite (function, sizeof (char), i, out);
}
