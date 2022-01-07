
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BIT (unsigned int*,int) ;
 unsigned int* LA ;
 int* LAruleno ;
 scalar_t__ WORDSIZE (int) ;
 int fprintf (int ,char*,...) ;
 int graph_file ;
 size_t larno ;
 int ntokens ;
 char** symbol_pname ;

__attribute__((used)) static void
graph_LA(int ruleno)
{
    int i;
    unsigned tokensetsize;
    unsigned *rowp;

    tokensetsize = (unsigned)WORDSIZE(ntokens);

    if (ruleno == LAruleno[larno])
    {
 rowp = LA + larno * tokensetsize;

 fprintf(graph_file, " { ");
 for (i = ntokens - 1; i >= 0; i--)
 {
     if (BIT(rowp, i))
  fprintf(graph_file, "%s ", symbol_pname[i]);
 }
 fprintf(graph_file, "}");
 ++larno;
    }
}
