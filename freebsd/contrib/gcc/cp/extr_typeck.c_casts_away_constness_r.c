
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_PTRMEM_P (int ) ;
 int TYPE_PTRMEM_POINTED_TO_TYPE (int ) ;
 int TYPE_PTR_P (int ) ;
 int build_pointer_type (int ) ;
 int cp_build_qualified_type (int ,int) ;
 int cp_type_quals (int ) ;
 int void_type_node ;

__attribute__((used)) static void
casts_away_constness_r (tree *t1, tree *t2)
{
  int quals1;
  int quals2;
  if ((!TYPE_PTR_P (*t1) && !TYPE_PTRMEM_P (*t1))
      || (!TYPE_PTR_P (*t2) && !TYPE_PTRMEM_P (*t2)))
    {
      *t1 = cp_build_qualified_type (void_type_node,
         cp_type_quals (*t1));
      *t2 = cp_build_qualified_type (void_type_node,
         cp_type_quals (*t2));
      return;
    }

  quals1 = cp_type_quals (*t1);
  quals2 = cp_type_quals (*t2);

  if (TYPE_PTRMEM_P (*t1))
    *t1 = TYPE_PTRMEM_POINTED_TO_TYPE (*t1);
  else
    *t1 = TREE_TYPE (*t1);
  if (TYPE_PTRMEM_P (*t2))
    *t2 = TYPE_PTRMEM_POINTED_TO_TYPE (*t2);
  else
    *t2 = TREE_TYPE (*t2);

  casts_away_constness_r (t1, t2);
  *t1 = build_pointer_type (*t1);
  *t2 = build_pointer_type (*t2);
  *t1 = cp_build_qualified_type (*t1, quals1);
  *t2 = cp_build_qualified_type (*t2, quals2);
}
