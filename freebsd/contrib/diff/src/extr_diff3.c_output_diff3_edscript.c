
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff3_block {size_t correspond; struct diff3_block* next; } ;
typedef enum diff_type { ____Placeholder_diff_type } diff_type ;
typedef int FILE ;


 size_t DIFF_1ST ;



 long D_HIGHLINE (struct diff3_block*,int const) ;
 long D_LOWLINE (struct diff3_block*,int const) ;
 scalar_t__ D_NUMLINES (struct diff3_block*,int const) ;
 size_t FILE0 ;
 size_t FILE1 ;
 size_t FILE2 ;
 int dotlines (int *,struct diff3_block*,int const) ;
 scalar_t__ finalwrite ;
 int flagging ;
 int fprintf (int *,char*,...) ;
 int overlap_only ;
 struct diff3_block* reverse_diff3_blocklist (struct diff3_block*) ;
 scalar_t__ show_2nd ;
 int simple_only ;
 int undotlines (int *,int,long,scalar_t__) ;

__attribute__((used)) static bool
output_diff3_edscript (FILE *outputfile, struct diff3_block *diff,
         int const mapping[3], int const rev_mapping[3],
         char const *file0, char const *file1, char const *file2)
{
  bool leading_dot;
  bool conflicts_found = 0;
  bool conflict;
  struct diff3_block *b;

  for (b = reverse_diff3_blocklist (diff); b; b = b->next)
    {

      enum diff_type type
 = (b->correspond == 128
    ? 128
    : DIFF_1ST + rev_mapping[b->correspond - DIFF_1ST]);

      long int low0, high0;


      switch (type)
 {
 default: continue;
 case 130: if (!show_2nd) continue; conflict = 1; break;
 case 129: if (overlap_only) continue; conflict = 0; break;
 case 128: if (simple_only) continue; conflict = flagging; break;
 }

      low0 = D_LOWLINE (b, mapping[FILE0]);
      high0 = D_HIGHLINE (b, mapping[FILE0]);

      if (conflict)
 {
   conflicts_found = 1;




   fprintf (outputfile, "%lda\n", high0);
   leading_dot = 0;
   if (type == 128)
     {
       if (show_2nd)
  {

    fprintf (outputfile, "||||||| %s\n", file1);
    leading_dot = dotlines (outputfile, b, mapping[FILE1]);
  }

       fprintf (outputfile, "=======\n");
       leading_dot |= dotlines (outputfile, b, mapping[FILE2]);
     }
   fprintf (outputfile, ">>>>>>> %s\n", file2);
   undotlines (outputfile, leading_dot, high0 + 2,
        (D_NUMLINES (b, mapping[FILE1])
         + D_NUMLINES (b, mapping[FILE2]) + 1));




   fprintf (outputfile, "%lda\n<<<<<<< %s\n", low0 - 1,
     type == 128 ? file0 : file1);
   leading_dot = 0;
   if (type == 130)
     {

       leading_dot = dotlines (outputfile, b, mapping[FILE1]);
       fprintf (outputfile, "=======\n");
     }
   undotlines (outputfile, leading_dot, low0 + 1,
        D_NUMLINES (b, mapping[FILE1]));
 }
      else if (D_NUMLINES (b, mapping[FILE2]) == 0)

 {
   if (low0 == high0)
     fprintf (outputfile, "%ldd\n", low0);
   else
     fprintf (outputfile, "%ld,%ldd\n", low0, high0);
 }
      else

 {
   switch (high0 - low0)
     {
     case -1:
       fprintf (outputfile, "%lda\n", high0);
       break;
     case 0:
       fprintf (outputfile, "%ldc\n", high0);
       break;
     default:
       fprintf (outputfile, "%ld,%ldc\n", low0, high0);
       break;
     }

   undotlines (outputfile, dotlines (outputfile, b, mapping[FILE2]),
        low0, D_NUMLINES (b, mapping[FILE2]));
 }
    }
  if (finalwrite) fprintf (outputfile, "w\nq\n");
  return conflicts_found;
}
