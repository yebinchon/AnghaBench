
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct data_dependence_relation {int dummy; } ;
typedef int * lambda_vector ;
typedef int DDR_ARE_DEPENDENT ;


 int CHREC_LEFT (int ) ;
 int CHREC_RIGHT (int ) ;
 int CHREC_VARIABLE (int ) ;
 int DDR_LOOP_NEST (struct data_dependence_relation*) ;
 int DDR_NB_LOOPS (struct data_dependence_relation*) ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ TREE_CODE (int ) ;
 int add_outer_distances (struct data_dependence_relation*,int *,int) ;
 int chrec_dont_know ;
 int index_in_loop_nest (int ,int ) ;
 int int_cst_value (int ) ;
 int * lambda_vector_new (int ) ;
 int save_dist_v (struct data_dependence_relation*,int *) ;

__attribute__((used)) static void
add_multivariate_self_dist (struct data_dependence_relation *ddr, tree c_2)
{
  int x_1, x_2;
  tree c_1 = CHREC_LEFT (c_2);
  tree c_0 = CHREC_LEFT (c_1);
  lambda_vector dist_v;


  if (TREE_CODE (c_0) != INTEGER_CST)
    {
      DDR_ARE_DEPENDENT (ddr) = chrec_dont_know;
      return;
    }

  x_2 = index_in_loop_nest (CHREC_VARIABLE (c_2), DDR_LOOP_NEST (ddr));
  x_1 = index_in_loop_nest (CHREC_VARIABLE (c_1), DDR_LOOP_NEST (ddr));


  dist_v = lambda_vector_new (DDR_NB_LOOPS (ddr));
  dist_v[x_1] = int_cst_value (CHREC_RIGHT (c_2));
  dist_v[x_2] = -int_cst_value (CHREC_RIGHT (c_1));
  save_dist_v (ddr, dist_v);

  add_outer_distances (ddr, dist_v, x_1);
}
