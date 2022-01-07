
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int (* signed_or_unsigned_type ) (int,int ) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;


 int INTEGRAL_TYPE_P (int ) ;
 int STRIP_NOPS (int ) ;
 int TREE_TYPE (int ) ;
 unsigned int TYPE_PRECISION (int ) ;
 int fold_convert (int ,int ) ;
 int get_narrower (int ,int*) ;
 TYPE_2__ lang_hooks ;
 scalar_t__ operand_equal_p (int ,int ,int ) ;
 int stub1 (int,int ) ;

__attribute__((used)) static int
operand_equal_for_comparison_p (tree arg0, tree arg1, tree other)
{
  int unsignedp1, unsignedpo;
  tree primarg0, primarg1, primother;
  unsigned int correct_width;

  if (operand_equal_p (arg0, arg1, 0))
    return 1;

  if (! INTEGRAL_TYPE_P (TREE_TYPE (arg0))
      || ! INTEGRAL_TYPE_P (TREE_TYPE (arg1)))
    return 0;




  primarg0 = arg0, primarg1 = arg1;
  STRIP_NOPS (primarg0);
  STRIP_NOPS (primarg1);
  if (operand_equal_p (primarg0, primarg1, 0))
    return 1;







  primarg1 = get_narrower (arg1, &unsignedp1);
  primother = get_narrower (other, &unsignedpo);

  correct_width = TYPE_PRECISION (TREE_TYPE (arg1));
  if (unsignedp1 == unsignedpo
      && TYPE_PRECISION (TREE_TYPE (primarg1)) < correct_width
      && TYPE_PRECISION (TREE_TYPE (primother)) < correct_width)
    {
      tree type = TREE_TYPE (arg0);



      primarg1 = fold_convert (lang_hooks.types.signed_or_unsigned_type
          (unsignedp1, TREE_TYPE (primarg1)), primarg1);

      if (operand_equal_p (arg0, fold_convert (type, primarg1), 0))
 return 1;
    }

  return 0;
}
