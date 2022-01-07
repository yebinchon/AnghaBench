
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_ATTRIBUTES (int ) ;
 scalar_t__ DECL_EXTERNAL (int ) ;
 int DECL_UID (int ) ;
 scalar_t__ TREE_PUBLIC (int ) ;
 int TREE_STATIC (int ) ;
 scalar_t__ TREE_THIS_VOLATILE (int ) ;
 int add_static_var (int ) ;
 int all_module_statics ;
 int bitmap_bit_p (int ,int ) ;
 scalar_t__ lookup_attribute (char*,int ) ;

__attribute__((used)) static inline bool
has_proper_scope_for_analysis (tree t)
{


  if (lookup_attribute ("used", DECL_ATTRIBUTES (t)))
    return 0;



  if (TREE_THIS_VOLATILE (t))
    return 0;


  if (!TREE_STATIC (t) && !DECL_EXTERNAL (t))
    return 0;

  if (DECL_EXTERNAL (t) || TREE_PUBLIC (t))
    return 0;



  if (!bitmap_bit_p (all_module_statics, DECL_UID (t)))
    add_static_var (t);

  return 1;
}
