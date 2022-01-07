
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TYPE_MAX_VALUE (scalar_t__) ;
 scalar_t__ TYPE_MIN_VALUE (scalar_t__) ;
 scalar_t__ convert (scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ tree_int_cst_compare (scalar_t__,scalar_t__) ;
 int warning (int ,char*) ;

__attribute__((used)) static bool
check_case_bounds (tree type, tree orig_type,
     tree *case_low_p, tree *case_high_p)
{
  tree min_value, max_value;
  tree case_low = *case_low_p;
  tree case_high = case_high_p ? *case_high_p : case_low;


  if (orig_type == error_mark_node)
    return 1;

  min_value = TYPE_MIN_VALUE (orig_type);
  max_value = TYPE_MAX_VALUE (orig_type);


  if (tree_int_cst_compare (case_low, min_value) < 0
      && tree_int_cst_compare (case_high, min_value) < 0)
    {
      warning (0, "case label value is less than minimum value for type");
      return 0;
    }


  if (tree_int_cst_compare (case_low, max_value) > 0
      && tree_int_cst_compare (case_high, max_value) > 0)
    {
      warning (0, "case label value exceeds maximum value for type");
      return 0;
    }


  if (tree_int_cst_compare (case_high, min_value) >= 0
      && tree_int_cst_compare (case_low, min_value) < 0)
    {
      warning (0, "lower value in case label range"
        " less than minimum value for type");
      case_low = min_value;
    }


  if (tree_int_cst_compare (case_low, max_value) <= 0
      && tree_int_cst_compare (case_high, max_value) > 0)
    {
      warning (0, "upper value in case label range"
        " exceeds maximum value for type");
      case_high = max_value;
    }

  if (*case_low_p != case_low)
    *case_low_p = convert (type, case_low);
  if (case_high_p && *case_high_p != case_high)
    *case_high_p = convert (type, case_high);

  return 1;
}
