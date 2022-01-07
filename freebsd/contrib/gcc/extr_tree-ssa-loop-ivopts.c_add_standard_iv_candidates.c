
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int dummy; } ;


 int BITS_PER_WORD ;
 int INT_TYPE_SIZE ;
 int add_standard_iv_candidates_for_size (struct ivopts_data*,int) ;

__attribute__((used)) static void
add_standard_iv_candidates (struct ivopts_data *data)
{
  add_standard_iv_candidates_for_size (data, INT_TYPE_SIZE);


  if (BITS_PER_WORD >= INT_TYPE_SIZE * 2)
    add_standard_iv_candidates_for_size (data, INT_TYPE_SIZE * 2);
}
