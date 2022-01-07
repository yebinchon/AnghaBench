
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_dependence_relation {int dummy; } ;
typedef int lambda_vector ;


 int DDR_A (struct data_dependence_relation*) ;
 scalar_t__ DDR_ARE_DEPENDENT (struct data_dependence_relation*) ;
 int DDR_B (struct data_dependence_relation*) ;
 int DDR_DIST_VECT (struct data_dependence_relation*,unsigned int) ;
 int DDR_NB_LOOPS (struct data_dependence_relation*) ;
 unsigned int DDR_NUM_DIST_VECTS (struct data_dependence_relation*) ;
 scalar_t__ NULL_TREE ;
 int TDF_DETAILS ;
 int add_other_self_distances (struct data_dependence_relation*) ;
 int add_outer_distances (struct data_dependence_relation*,int ,int) ;
 int build_classic_dist_vector_1 (struct data_dependence_relation*,int ,int ,int ,int*,int*) ;
 int compute_subscript_distance (struct data_dependence_relation*) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*) ;
 int lambda_vector_copy (int ,int ,int) ;
 int lambda_vector_first_nz (int ,int,int ) ;
 int lambda_vector_lexico_pos (int ,int) ;
 int lambda_vector_new (int) ;
 int print_lambda_vector (scalar_t__,int ,int) ;
 scalar_t__ same_access_functions (struct data_dependence_relation*) ;
 int save_dist_v (struct data_dependence_relation*,int ) ;
 int subscript_dependence_tester_1 (struct data_dependence_relation*,int ,int ) ;

__attribute__((used)) static bool
build_classic_dist_vector (struct data_dependence_relation *ddr)
{
  bool init_b = 0;
  int index_carry = DDR_NB_LOOPS (ddr);
  lambda_vector dist_v;

  if (DDR_ARE_DEPENDENT (ddr) != NULL_TREE)
    return 1;

  if (same_access_functions (ddr))
    {

      dist_v = lambda_vector_new (DDR_NB_LOOPS (ddr));
      save_dist_v (ddr, dist_v);

      if (DDR_NB_LOOPS (ddr) > 1)
 add_other_self_distances (ddr);

      return 1;
    }

  dist_v = lambda_vector_new (DDR_NB_LOOPS (ddr));
  if (!build_classic_dist_vector_1 (ddr, DDR_A (ddr), DDR_B (ddr),
        dist_v, &init_b, &index_carry))
    return 0;


  if (init_b)
    {
      if (!lambda_vector_lexico_pos (dist_v, DDR_NB_LOOPS (ddr)))
 {
   lambda_vector save_v = lambda_vector_new (DDR_NB_LOOPS (ddr));
   subscript_dependence_tester_1 (ddr, DDR_B (ddr), DDR_A (ddr));
   compute_subscript_distance (ddr);
   build_classic_dist_vector_1 (ddr, DDR_B (ddr), DDR_A (ddr),
           save_v, &init_b, &index_carry);
   save_dist_v (ddr, save_v);
   if (DDR_NB_LOOPS (ddr) > 1)
     {
        add_outer_distances (ddr, save_v, index_carry);
       add_outer_distances (ddr, dist_v, index_carry);
     }
 }
      else
 {
   lambda_vector save_v = lambda_vector_new (DDR_NB_LOOPS (ddr));
   lambda_vector_copy (dist_v, save_v, DDR_NB_LOOPS (ddr));
   save_dist_v (ddr, save_v);

   if (DDR_NB_LOOPS (ddr) > 1)
     {
       lambda_vector opposite_v = lambda_vector_new (DDR_NB_LOOPS (ddr));

       subscript_dependence_tester_1 (ddr, DDR_B (ddr), DDR_A (ddr));
       compute_subscript_distance (ddr);
       build_classic_dist_vector_1 (ddr, DDR_B (ddr), DDR_A (ddr),
        opposite_v, &init_b, &index_carry);

       add_outer_distances (ddr, dist_v, index_carry);
       add_outer_distances (ddr, opposite_v, index_carry);
     }
 }
    }
  else
    {







      add_outer_distances (ddr, dist_v,
      lambda_vector_first_nz (dist_v,
         DDR_NB_LOOPS (ddr), 0));
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      unsigned i;

      fprintf (dump_file, "(build_classic_dist_vector\n");
      for (i = 0; i < DDR_NUM_DIST_VECTS (ddr); i++)
 {
   fprintf (dump_file, "  dist_vector = (");
   print_lambda_vector (dump_file, DDR_DIST_VECT (ddr, i),
          DDR_NB_LOOPS (ddr));
   fprintf (dump_file, "  )\n");
 }
      fprintf (dump_file, ")\n");
    }

  return 1;
}
