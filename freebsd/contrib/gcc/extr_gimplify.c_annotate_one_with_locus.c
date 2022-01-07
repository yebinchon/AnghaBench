
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int location_t ;


 int EXPR_HAS_LOCATION (int ) ;
 scalar_t__ EXPR_P (int ) ;
 int SET_EXPR_LOCATION (int ,int ) ;
 scalar_t__ should_carry_locus_p (int ) ;

__attribute__((used)) static void
annotate_one_with_locus (tree t, location_t locus)
{
  if (EXPR_P (t) && ! EXPR_HAS_LOCATION (t) && should_carry_locus_p (t))
    SET_EXPR_LOCATION (t, locus);
}
