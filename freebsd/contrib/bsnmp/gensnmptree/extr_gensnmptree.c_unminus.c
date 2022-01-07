
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
unminus(FILE *fp, const char *s)
{

 while (*s != '\0') {
  if (*s == '-')
   fprintf(fp, "_");
  else
   fprintf(fp, "%c", *s);
  s++;
 }
}
