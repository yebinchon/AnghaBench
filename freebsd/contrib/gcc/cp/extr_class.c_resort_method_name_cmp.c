
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int cookie; int (* new_value ) (scalar_t__*,int ) ;} ;


 scalar_t__ DECL_NAME (int ) ;
 scalar_t__ const NULL_TREE ;
 int OVL_CURRENT (scalar_t__ const) ;
 TYPE_1__ resort_data ;
 int stub1 (scalar_t__*,int ) ;
 int stub2 (scalar_t__*,int ) ;

__attribute__((used)) static int
resort_method_name_cmp (const void* m1_p, const void* m2_p)
{
  const tree *const m1 = (const tree *) m1_p;
  const tree *const m2 = (const tree *) m2_p;
  if (*m1 == NULL_TREE && *m2 == NULL_TREE)
    return 0;
  if (*m1 == NULL_TREE)
    return -1;
  if (*m2 == NULL_TREE)
    return 1;
  {
    tree d1 = DECL_NAME (OVL_CURRENT (*m1));
    tree d2 = DECL_NAME (OVL_CURRENT (*m2));
    resort_data.new_value (&d1, resort_data.cookie);
    resort_data.new_value (&d2, resort_data.cookie);
    if (d1 < d2)
      return -1;
  }
  return 1;
}
