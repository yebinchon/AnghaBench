
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ ccl_contains (int,int) ;
 int csize ;
 int fprintf (int *,char*,char*) ;
 int fputs (char*,int *) ;
 int putc (char,int *) ;
 char* readable_form (int) ;

__attribute__((used)) static void dump_cclp (FILE* file, int cclp)
{
 int i;

 putc ('[', file);

 for (i = 0; i < csize; ++i) {
  if (ccl_contains(cclp, i)){
   int start_char = i;

   putc (' ', file);

   fputs (readable_form (i), file);

   while (++i < csize && ccl_contains(cclp,i)) ;

   if (i - 1 > start_char)

    fprintf (file, "-%s",
      readable_form (i - 1));

   putc (' ', file);
  }
 }

 putc (']', file);
}
