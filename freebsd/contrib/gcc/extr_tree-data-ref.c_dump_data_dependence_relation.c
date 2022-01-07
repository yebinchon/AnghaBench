
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {int num; } ;
struct data_reference {int dummy; } ;
struct data_dependence_relation {int dummy; } ;
typedef int FILE ;


 struct data_reference* DDR_A (struct data_dependence_relation*) ;
 scalar_t__ DDR_ARE_DEPENDENT (struct data_dependence_relation*) ;
 struct data_reference* DDR_B (struct data_dependence_relation*) ;
 int DDR_DIR_VECT (struct data_dependence_relation*,unsigned int) ;
 int DDR_DIST_VECT (struct data_dependence_relation*,unsigned int) ;
 int DDR_LOOP_NEST (struct data_dependence_relation*) ;
 int DDR_NB_LOOPS (struct data_dependence_relation*) ;
 unsigned int DDR_NUM_DIR_VECTS (struct data_dependence_relation*) ;
 unsigned int DDR_NUM_DIST_VECTS (struct data_dependence_relation*) ;
 unsigned int DDR_NUM_SUBSCRIPTS (struct data_dependence_relation*) ;
 int DDR_SUBSCRIPT (struct data_dependence_relation*,unsigned int) ;
 int DR_ACCESS_FN (struct data_reference*,unsigned int) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ VEC_iterate (int ,int ,unsigned int,struct loop*) ;
 scalar_t__ chrec_dont_know ;
 scalar_t__ chrec_known ;
 int dump_subscript (int *,int ) ;
 int fprintf (int *,char*,...) ;
 int loop_p ;
 int print_direction_vector (int *,int ,int ) ;
 int print_generic_stmt (int *,int ,int ) ;
 int print_lambda_vector (int *,int ,int ) ;

void
dump_data_dependence_relation (FILE *outf,
          struct data_dependence_relation *ddr)
{
  struct data_reference *dra, *drb;

  dra = DDR_A (ddr);
  drb = DDR_B (ddr);
  fprintf (outf, "(Data Dep: \n");
  if (DDR_ARE_DEPENDENT (ddr) == chrec_dont_know)
    fprintf (outf, "    (don't know)\n");

  else if (DDR_ARE_DEPENDENT (ddr) == chrec_known)
    fprintf (outf, "    (no dependence)\n");

  else if (DDR_ARE_DEPENDENT (ddr) == NULL_TREE)
    {
      unsigned int i;
      struct loop *loopi;

      for (i = 0; i < DDR_NUM_SUBSCRIPTS (ddr); i++)
 {
   fprintf (outf, "  access_fn_A: ");
   print_generic_stmt (outf, DR_ACCESS_FN (dra, i), 0);
   fprintf (outf, "  access_fn_B: ");
   print_generic_stmt (outf, DR_ACCESS_FN (drb, i), 0);
   dump_subscript (outf, DDR_SUBSCRIPT (ddr, i));
 }

      fprintf (outf, "  loop nest: (");
      for (i = 0; VEC_iterate (loop_p, DDR_LOOP_NEST (ddr), i, loopi); i++)
 fprintf (outf, "%d ", loopi->num);
      fprintf (outf, ")\n");

      for (i = 0; i < DDR_NUM_DIST_VECTS (ddr); i++)
 {
   fprintf (outf, "  distance_vector: ");
   print_lambda_vector (outf, DDR_DIST_VECT (ddr, i),
          DDR_NB_LOOPS (ddr));
 }

      for (i = 0; i < DDR_NUM_DIR_VECTS (ddr); i++)
 {
   fprintf (outf, "  direction_vector: ");
   print_direction_vector (outf, DDR_DIR_VECT (ddr, i),
      DDR_NB_LOOPS (ddr));
 }
    }

  fprintf (outf, ")\n");
}
