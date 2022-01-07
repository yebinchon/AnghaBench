
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_dependence_relation {int dummy; } ;
typedef int* lambda_vector ;


 int DDR_NB_LOOPS (struct data_dependence_relation*) ;
 int lambda_vector_copy (int*,int*,int ) ;
 int* lambda_vector_new (int ) ;
 int save_dist_v (struct data_dependence_relation*,int*) ;

__attribute__((used)) static void
add_outer_distances (struct data_dependence_relation *ddr,
       lambda_vector dist_v, int index)
{


  while (--index >= 0)
    {
      lambda_vector save_v = lambda_vector_new (DDR_NB_LOOPS (ddr));
      lambda_vector_copy (dist_v, save_v, DDR_NB_LOOPS (ddr));
      save_v[index] = 1;
      save_dist_v (ddr, save_v);
    }
}
