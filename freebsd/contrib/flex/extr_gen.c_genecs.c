
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ABS (int) ;
 int _ (char*) ;
 int csize ;
 int dataend () ;
 int* ecgroup ;
 int fprintf (int ,char*,char*,int) ;
 int fputs (int ,int ) ;
 int get_int32_decl () ;
 int mkdata (int) ;
 int out_str_dec (int ,char*,int) ;
 int putc (char,int ) ;
 char* readable_form (int) ;
 int stderr ;
 scalar_t__ trace ;

void genecs ()
{
 int i, j;
 int numrows;

 out_str_dec (get_int32_decl (), "yy_ec", csize);

 for (i = 1; i < csize; ++i) {
  ecgroup[i] = ABS (ecgroup[i]);
  mkdata (ecgroup[i]);
 }

 dataend ();

 if (trace) {
  fputs (_("\n\nEquivalence Classes:\n\n"), stderr);

  numrows = csize / 8;

  for (j = 0; j < numrows; ++j) {
   for (i = j; i < csize; i = i + numrows) {
    fprintf (stderr, "%4s = %-2d",
      readable_form (i), ecgroup[i]);

    putc (' ', stderr);
   }

   putc ('\n', stderr);
  }
 }
}
