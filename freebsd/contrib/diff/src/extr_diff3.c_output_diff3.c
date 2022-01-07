
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff3_block {int correspond; } ;
typedef int lin ;
typedef int FILE ;






 int D_HIGHLINE (struct diff3_block*,int) ;
 int D_LOWLINE (struct diff3_block*,int) ;
 struct diff3_block* D_NEXT (struct diff3_block*) ;
 size_t D_RELLEN (struct diff3_block*,int,int) ;
 char* D_RELNUM (struct diff3_block*,int,int) ;
 char* _ (char*) ;
 int fatal (char*) ;
 int fprintf (int *,char const*,...) ;
 int fwrite (char*,int,size_t,int *) ;
 scalar_t__ initial_tab ;

__attribute__((used)) static void
output_diff3 (FILE *outputfile, struct diff3_block *diff,
       int const mapping[3], int const rev_mapping[3])
{
  int i;
  int oddoneout;
  char *cp;
  struct diff3_block *ptr;
  lin line;
  size_t length;
  int dontprint;
  static int skew_increment[3] = { 2, 3, 1 };
  char const *line_prefix = initial_tab ? "\t" : "  ";

  for (ptr = diff; ptr; ptr = D_NEXT (ptr))
    {
      char x[2];

      switch (ptr->correspond)
 {
 case 128:
   x[0] = 0;
   dontprint = 3;
   oddoneout = 3;
   break;
 case 131:
 case 130:
 case 129:
   oddoneout = rev_mapping[ptr->correspond - 131];

   x[0] = oddoneout + '1';
   x[1] = 0;
   dontprint = oddoneout == 0;
   break;
 default:
   fatal ("internal error: invalid diff type passed to output");
 }
      fprintf (outputfile, "====%s\n", x);


      for (i = 0; i < 3;
    i = (oddoneout == 1 ? skew_increment[i] : i + 1))
 {
   int realfile = mapping[i];
   lin lowt = D_LOWLINE (ptr, realfile);
   lin hight = D_HIGHLINE (ptr, realfile);
   long int llowt = lowt;
   long int lhight = hight;

   fprintf (outputfile, "%d:", i + 1);
   switch (lowt - hight)
     {
     case 1:
       fprintf (outputfile, "%lda\n", llowt - 1);
       break;
     case 0:
       fprintf (outputfile, "%ldc\n", llowt);
       break;
     default:
       fprintf (outputfile, "%ld,%ldc\n", llowt, lhight);
       break;
     }

   if (i == dontprint) continue;

   if (lowt <= hight)
     {
       line = 0;
       do
  {
    fprintf (outputfile, line_prefix);
    cp = D_RELNUM (ptr, realfile, line);
    length = D_RELLEN (ptr, realfile, line);
    fwrite (cp, sizeof (char), length, outputfile);
  }
       while (++line < hight - lowt + 1);
       if (cp[length - 1] != '\n')
  fprintf (outputfile, "\n\\ %s\n",
    _("No newline at end of file"));
     }
 }
    }
}
