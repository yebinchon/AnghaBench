
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int bitmap ;


 int SSA_NAME_VERSION (int ) ;
 int bitmap_clear_bit (int ,int) ;
 int get_lhs_or_phi_result (int ) ;
 int get_rhs_or_phi_arg (int ) ;
 scalar_t__ has_zero_uses (int ) ;
 int propagate_rhs_into_lhs (int ,int ,int ,int ) ;
 int remove_stmt_or_phi (int ) ;

__attribute__((used)) static void
eliminate_const_or_copy (tree t, bitmap interesting_names)
{
  tree lhs = get_lhs_or_phi_result (t);
  tree rhs;
  int version = SSA_NAME_VERSION (lhs);






  if (has_zero_uses (lhs))
    {
      bitmap_clear_bit (interesting_names, version);
      remove_stmt_or_phi (t);
      return;
    }



  rhs = get_rhs_or_phi_arg (t);
  if (!rhs)
    {
      bitmap_clear_bit (interesting_names, version);
      return;
    }

  propagate_rhs_into_lhs (t, lhs, rhs, interesting_names);




  bitmap_clear_bit (interesting_names, version);
}
