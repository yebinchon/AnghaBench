
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_reference {int dummy; } ;
typedef int FILE ;


 int DR_ACCESS_FN (struct data_reference*,unsigned int) ;
 int DR_BASE_OBJECT (struct data_reference*) ;
 unsigned int DR_NUM_DIMENSIONS (struct data_reference*) ;
 int DR_REF (struct data_reference*) ;
 int DR_STMT (struct data_reference*) ;
 int fprintf (int *,char*,...) ;
 int print_generic_stmt (int *,int ,int ) ;

void
dump_data_reference (FILE *outf,
       struct data_reference *dr)
{
  unsigned int i;

  fprintf (outf, "(Data Ref: \n  stmt: ");
  print_generic_stmt (outf, DR_STMT (dr), 0);
  fprintf (outf, "  ref: ");
  print_generic_stmt (outf, DR_REF (dr), 0);
  fprintf (outf, "  base_object: ");
  print_generic_stmt (outf, DR_BASE_OBJECT (dr), 0);

  for (i = 0; i < DR_NUM_DIMENSIONS (dr); i++)
    {
      fprintf (outf, "  Access function %d: ", i);
      print_generic_stmt (outf, DR_ACCESS_FN (dr, i), 0);
    }
  fprintf (outf, ")\n");
}
