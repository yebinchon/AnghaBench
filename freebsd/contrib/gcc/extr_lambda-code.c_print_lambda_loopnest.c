
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lambda_loopnest ;
typedef int FILE ;


 int LN_DEPTH (int ) ;
 int LN_INVARIANTS (int ) ;
 int * LN_LOOPS (int ) ;
 int fprintf (int *,char*,...) ;
 int print_lambda_loop (int *,int ,int,int ,char) ;

void
print_lambda_loopnest (FILE * outfile, lambda_loopnest nest, char start)
{
  int i;
  for (i = 0; i < LN_DEPTH (nest); i++)
    {
      fprintf (outfile, "Loop %c\n", start + i);
      print_lambda_loop (outfile, LN_LOOPS (nest)[i], LN_DEPTH (nest),
    LN_INVARIANTS (nest), 'i');
      fprintf (outfile, "\n");
    }
}
