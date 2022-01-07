
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;
 int fputc (char const,int *) ;

__attribute__((used)) static void
pq(FILE *f, const char *c)
{
 while (*c) {
  if (*c == '"')
   fprintf(f, "\\\"");
  else
   fputc(*c, f);
  c++;
 }
}
