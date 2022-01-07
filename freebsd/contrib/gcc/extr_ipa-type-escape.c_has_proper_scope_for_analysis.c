
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_ATTRIBUTES (int ) ;
 scalar_t__ DECL_EXTERNAL (int ) ;
 scalar_t__ DECL_INITIAL (int ) ;
 int FULL_ESCAPE ;
 scalar_t__ TREE_PUBLIC (int ) ;
 scalar_t__ TREE_READONLY (int ) ;
 int TREE_STATIC (int ) ;
 scalar_t__ TREE_THIS_VOLATILE (int ) ;
 int TREE_TYPE (int ) ;
 int get_canon_type (int ,int,int) ;
 scalar_t__ is_gimple_min_invariant (scalar_t__) ;
 scalar_t__ lookup_attribute (char*,int ) ;
 int mark_interesting_type (int ,int ) ;

__attribute__((used)) static inline void
has_proper_scope_for_analysis (tree t)
{


  tree type = get_canon_type (TREE_TYPE (t), 0, 0);
  if (!type) return;

  if (lookup_attribute ("used", DECL_ATTRIBUTES (t)))
    {
      mark_interesting_type (type, FULL_ESCAPE);
      return;
    }



  if (TREE_THIS_VOLATILE (t))
    return;


  if (!TREE_STATIC (t) && !DECL_EXTERNAL (t))
    return;

  if (DECL_EXTERNAL (t) || TREE_PUBLIC (t))
    {





      if (TREE_READONLY (t)
   && DECL_INITIAL (t)
   && is_gimple_min_invariant (DECL_INITIAL (t)))
 ;
      else
 {

   mark_interesting_type (type, FULL_ESCAPE);
 }
    }
}
