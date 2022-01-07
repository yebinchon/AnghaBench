
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tree ;
struct TYPE_6__ {int need_temporary_p; int type; } ;
typedef TYPE_1__ conversion ;


 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 TYPE_1__* build_conv (int ,int ,TYPE_1__*) ;
 int ck_base ;
 int ck_ref_bind ;
 int gcc_assert (int) ;
 int same_type_ignoring_top_level_qualifiers_p (int ,int ) ;

__attribute__((used)) static conversion *
direct_reference_binding (tree type, conversion *conv)
{
  tree t;

  gcc_assert (TREE_CODE (type) == REFERENCE_TYPE);
  gcc_assert (TREE_CODE (conv->type) != REFERENCE_TYPE);

  t = TREE_TYPE (type);
  if (!same_type_ignoring_top_level_qualifiers_p (t, conv->type))
    {

      conv = build_conv (ck_base, t, conv);



      conv->need_temporary_p = 0;
    }
  return build_conv (ck_ref_bind, type, conv);
}
