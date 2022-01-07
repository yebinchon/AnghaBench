
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int dummy; } ;


 int add_derived_ivs_candidates (struct ivopts_data*) ;
 int add_old_ivs_candidates (struct ivopts_data*) ;
 int add_standard_iv_candidates (struct ivopts_data*) ;
 int record_important_candidates (struct ivopts_data*) ;

__attribute__((used)) static void
find_iv_candidates (struct ivopts_data *data)
{

  add_standard_iv_candidates (data);


  add_old_ivs_candidates (data);


  add_derived_ivs_candidates (data);


  record_important_candidates (data);
}
