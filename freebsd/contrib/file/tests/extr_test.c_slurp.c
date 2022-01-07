
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int getc (int *) ;
 scalar_t__ xrealloc (char*,int) ;

__attribute__((used)) static char *
slurp(FILE *fp, size_t *final_len)
{
 size_t len = 256;
 int c;
 char *l = (char *)xrealloc(((void*)0), len), *s = l;

 for (c = getc(fp); c != EOF; c = getc(fp)) {
  if (s == l + len) {
   l = (char *)xrealloc(l, len * 2);
   len *= 2;
  }
  *s++ = c;
 }
 if (s == l + len)
  l = (char *)xrealloc(l, len + 1);
 *s++ = '\0';

 *final_len = s - l;
 l = (char *)xrealloc(l, s - l);
 return l;
}
