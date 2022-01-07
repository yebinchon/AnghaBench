
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int cookie; int (* new_value ) (scalar_t__*,int ) ;} ;


 scalar_t__ DECL_NAME (scalar_t__ const) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__ const) ;
 scalar_t__ TYPE_DECL ;
 TYPE_1__ resort_data ;
 int stub1 (scalar_t__*,int ) ;
 int stub2 (scalar_t__*,int ) ;

__attribute__((used)) static int
resort_field_decl_cmp (const void *x_p, const void *y_p)
{
  const tree *const x = (const tree *const) x_p;
  const tree *const y = (const tree *const) y_p;

  if (DECL_NAME (*x) == DECL_NAME (*y))

    return (TREE_CODE (*y) == TYPE_DECL) - (TREE_CODE (*x) == TYPE_DECL);
  if (DECL_NAME (*x) == NULL_TREE)
    return -1;
  if (DECL_NAME (*y) == NULL_TREE)
    return 1;
  {
    tree d1 = DECL_NAME (*x);
    tree d2 = DECL_NAME (*y);
    resort_data.new_value (&d1, resort_data.cookie);
    resort_data.new_value (&d2, resort_data.cookie);
    if (d1 < d2)
      return -1;
  }
  return 1;
}
