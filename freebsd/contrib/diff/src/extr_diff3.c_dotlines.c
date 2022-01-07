
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff3_block {int dummy; } ;
typedef scalar_t__ lin ;
typedef int FILE ;


 scalar_t__ D_NUMLINES (struct diff3_block*,int) ;
 int D_RELLEN (struct diff3_block*,int,scalar_t__) ;
 char* D_RELNUM (struct diff3_block*,int,scalar_t__) ;
 int fprintf (int *,char*) ;
 int fwrite (char*,int,int ,int *) ;

__attribute__((used)) static bool
dotlines (FILE *outputfile, struct diff3_block *b, int filenum)
{
  lin i;
  bool leading_dot = 0;

  for (i = 0;
       i < D_NUMLINES (b, filenum);
       i++)
    {
      char *line = D_RELNUM (b, filenum, i);
      if (line[0] == '.')
 {
   leading_dot = 1;
   fprintf (outputfile, ".");
 }
      fwrite (line, sizeof (char),
       D_RELLEN (b, filenum, i), outputfile);
    }

  return leading_dot;
}
