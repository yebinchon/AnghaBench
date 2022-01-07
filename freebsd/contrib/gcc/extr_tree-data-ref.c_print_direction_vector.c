
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* lambda_vector ;
typedef enum data_dependence_direction { ____Placeholder_data_dependence_direction } data_dependence_direction ;
typedef int FILE ;
 int fprintf (int *,char*) ;

void
print_direction_vector (FILE *outf,
   lambda_vector dirv,
   int length)
{
  int eq;

  for (eq = 0; eq < length; eq++)
    {
      enum data_dependence_direction dir = dirv[eq];

      switch (dir)
 {
 case 131:
   fprintf (outf, "    +");
   break;
 case 133:
   fprintf (outf, "    -");
   break;
 case 134:
   fprintf (outf, "    =");
   break;
 case 130:
   fprintf (outf, "   +=");
   break;
 case 129:
   fprintf (outf, "   +-");
   break;
 case 132:
   fprintf (outf, "   -=");
   break;
 case 128:
   fprintf (outf, "    *");
   break;
 default:
   fprintf (outf, "indep");
   break;
 }
    }
  fprintf (outf, "\n");
}
