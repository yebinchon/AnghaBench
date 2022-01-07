
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct iv {scalar_t__ step; } ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (scalar_t__) ;
 scalar_t__ build_low_bits_mask (scalar_t__,scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ num_ending_zeros (scalar_t__) ;
 scalar_t__ tree_low_cst (scalar_t__,int) ;
 scalar_t__ unsigned_type_for (int ) ;

__attribute__((used)) static tree
iv_period (struct iv *iv)
{
  tree step = iv->step, period, type;
  tree pow2div;

  gcc_assert (step && TREE_CODE (step) == INTEGER_CST);




  pow2div = num_ending_zeros (step);
  type = unsigned_type_for (TREE_TYPE (step));

  period = build_low_bits_mask (type,
    (TYPE_PRECISION (type)
     - tree_low_cst (pow2div, 1)));

  return period;
}
