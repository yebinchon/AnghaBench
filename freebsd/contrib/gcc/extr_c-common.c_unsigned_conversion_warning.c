
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ INTEGER_TYPE ;
 int OPT_Wconversion ;
 int OPT_Woverflow ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_UNSIGNED (int ) ;
 int c_common_signed_type (int ) ;
 int int_fits_type_p (int ,int ) ;
 scalar_t__ skip_evaluation ;
 int warning (int ,char*) ;

__attribute__((used)) static void
unsigned_conversion_warning (tree result, tree operand)
{
  tree type = TREE_TYPE (result);

  if (TREE_CODE (operand) == INTEGER_CST
      && TREE_CODE (type) == INTEGER_TYPE
      && TYPE_UNSIGNED (type)
      && skip_evaluation == 0
      && !int_fits_type_p (operand, type))
    {
      if (!int_fits_type_p (operand, c_common_signed_type (type)))

 warning (OPT_Woverflow,
   "large integer implicitly truncated to unsigned type");
      else
 warning (OPT_Wconversion,
   "negative integer implicitly converted to unsigned type");
    }
}
