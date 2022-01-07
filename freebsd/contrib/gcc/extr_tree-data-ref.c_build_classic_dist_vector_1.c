
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct subscript {int dummy; } ;
struct data_reference {int dummy; } ;
struct data_dependence_relation {int dummy; } ;
typedef int* lambda_vector ;


 int CHREC_VARIABLE (int ) ;
 int DDR_LOOP_NEST (struct data_dependence_relation*) ;
 int DDR_NB_LOOPS (struct data_dependence_relation*) ;
 unsigned int DDR_NUM_SUBSCRIPTS (struct data_dependence_relation*) ;
 struct subscript* DDR_SUBSCRIPT (struct data_dependence_relation*,unsigned int) ;
 int DR_ACCESS_FN (struct data_reference*,unsigned int) ;
 int MIN (int,int) ;
 scalar_t__ POLYNOMIAL_CHREC ;
 int SUB_DISTANCE (struct subscript*) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ chrec_contains_undetermined (int ) ;
 int chrec_known ;
 int finalize_ddr_dependent (struct data_dependence_relation*,int ) ;
 int index_in_loop_nest (int ,int ) ;
 int int_cst_value (int ) ;
 int* lambda_vector_new (int ) ;
 int non_affine_dependence_relation (struct data_dependence_relation*) ;

__attribute__((used)) static bool
build_classic_dist_vector_1 (struct data_dependence_relation *ddr,
        struct data_reference *ddr_a,
        struct data_reference *ddr_b,
        lambda_vector dist_v, bool *init_b,
        int *index_carry)
{
  unsigned i;
  lambda_vector init_v = lambda_vector_new (DDR_NB_LOOPS (ddr));

  for (i = 0; i < DDR_NUM_SUBSCRIPTS (ddr); i++)
    {
      tree access_fn_a, access_fn_b;
      struct subscript *subscript = DDR_SUBSCRIPT (ddr, i);

      if (chrec_contains_undetermined (SUB_DISTANCE (subscript)))
 {
   non_affine_dependence_relation (ddr);
   return 0;
 }

      access_fn_a = DR_ACCESS_FN (ddr_a, i);
      access_fn_b = DR_ACCESS_FN (ddr_b, i);

      if (TREE_CODE (access_fn_a) == POLYNOMIAL_CHREC
   && TREE_CODE (access_fn_b) == POLYNOMIAL_CHREC)
 {
   int dist, index;
   int index_a = index_in_loop_nest (CHREC_VARIABLE (access_fn_a),
         DDR_LOOP_NEST (ddr));
   int index_b = index_in_loop_nest (CHREC_VARIABLE (access_fn_b),
         DDR_LOOP_NEST (ddr));
   index = index_a < index_b ? index_a : index_b;
   *index_carry = MIN (index, *index_carry);

   if (chrec_contains_undetermined (SUB_DISTANCE (subscript)))
     {
       non_affine_dependence_relation (ddr);
       return 0;
     }

   dist = int_cst_value (SUB_DISTANCE (subscript));
   if (init_v[index] != 0 && dist_v[index] != dist)
     {
       finalize_ddr_dependent (ddr, chrec_known);
       return 0;
     }

   dist_v[index] = dist;
   init_v[index] = 1;
   *init_b = 1;
 }
      else
 {



   non_affine_dependence_relation (ddr);
   return 0;
 }
    }

  return 1;
}
