
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff3_block {size_t correspond; struct diff3_block* next; } ;
typedef scalar_t__ lin ;
typedef enum diff_type { ____Placeholder_diff_type } diff_type ;
typedef int FILE ;


 size_t DIFF_1ST ;



 scalar_t__ D_LOWLINE (struct diff3_block*,size_t) ;
 scalar_t__ D_NUMLINES (struct diff3_block*,int const) ;
 int D_RELLEN (struct diff3_block*,int const,scalar_t__) ;
 int D_RELNUM (struct diff3_block*,int const,scalar_t__) ;
 int EOF ;
 size_t FILE0 ;
 size_t FILE1 ;
 size_t FILE2 ;
 int _ (char*) ;
 int fatal (char*) ;
 int feof (int *) ;
 int ferror (int *) ;
 int flagging ;
 int fprintf (int *,char const*,...) ;
 int fwrite (int ,int,int ,int *) ;
 int getc (int *) ;
 int overlap_only ;
 int perror_with_exit (int ) ;
 int putc (int,int *) ;
 scalar_t__ show_2nd ;
 int simple_only ;

__attribute__((used)) static bool
output_diff3_merge (FILE *infile, FILE *outputfile, struct diff3_block *diff,
      int const mapping[3], int const rev_mapping[3],
      char const *file0, char const *file1, char const *file2)
{
  int c;
  lin i;
  bool conflicts_found = 0;
  bool conflict;
  struct diff3_block *b;
  lin linesread = 0;

  for (b = diff; b; b = b->next)
    {

      enum diff_type type
 = ((b->correspond == 128)
    ? 128
    : DIFF_1ST + rev_mapping[b->correspond - DIFF_1ST]);
      char const *format_2nd = "<<<<<<< %s\n";


      switch (type)
 {
 default: continue;
 case 130: if (!show_2nd) continue; conflict = 1; break;
 case 129: if (overlap_only) continue; conflict = 0; break;
 case 128: if (simple_only) continue; conflict = flagging;
   format_2nd = "||||||| %s\n";
   break;
 }


      i = D_LOWLINE (b, FILE0) - linesread - 1;
      linesread += i;
      while (0 <= --i)
 do
   {
     c = getc (infile);
     if (c == EOF)
       {
  if (ferror (infile))
    perror_with_exit (_("read failed"));
  else if (feof (infile))
    fatal ("input file shrank");
       }
     putc (c, outputfile);
   }
 while (c != '\n');

      if (conflict)
 {
   conflicts_found = 1;

   if (type == 128)
     {

       fprintf (outputfile, "<<<<<<< %s\n", file0);
       for (i = 0;
     i < D_NUMLINES (b, mapping[FILE0]);
     i++)
  fwrite (D_RELNUM (b, mapping[FILE0], i), sizeof (char),
   D_RELLEN (b, mapping[FILE0], i), outputfile);
     }

   if (show_2nd)
     {

       fprintf (outputfile, format_2nd, file1);
       for (i = 0;
     i < D_NUMLINES (b, mapping[FILE1]);
     i++)
  fwrite (D_RELNUM (b, mapping[FILE1], i), sizeof (char),
   D_RELLEN (b, mapping[FILE1], i), outputfile);
     }

   fprintf (outputfile, "=======\n");
 }


      for (i = 0;
    i < D_NUMLINES (b, mapping[FILE2]);
    i++)
 fwrite (D_RELNUM (b, mapping[FILE2], i), sizeof (char),
  D_RELLEN (b, mapping[FILE2], i), outputfile);

      if (conflict)
 fprintf (outputfile, ">>>>>>> %s\n", file2);


      i = D_NUMLINES (b, FILE0);
      linesread += i;
      while (0 <= --i)
 while ((c = getc (infile)) != '\n')
   if (c == EOF)
     {
       if (ferror (infile))
  perror_with_exit (_("read failed"));
       else if (feof (infile))
  {
    if (i || b->next)
      fatal ("input file shrank");
    return conflicts_found;
  }
     }
    }

  while ((c = getc (infile)) != EOF || !(ferror (infile) | feof (infile)))
    putc (c, outputfile);
  return conflicts_found;
}
