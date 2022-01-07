
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ POINTER_TYPE ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 scalar_t__ TYPE_PTRMEM_P (int ) ;
 int TYPE_PTRMEM_POINTED_TO_TYPE (int ) ;
 int build_pointer_type (int ) ;
 int can_convert (int ,int ) ;
 int casts_away_constness_r (int *,int *) ;

__attribute__((used)) static bool
casts_away_constness (tree t1, tree t2)
{
  if (TREE_CODE (t2) == REFERENCE_TYPE)
    {






      t1 = (TREE_CODE (t1) == REFERENCE_TYPE ? TREE_TYPE (t1) : t1);
      return casts_away_constness (build_pointer_type (t1),
       build_pointer_type (TREE_TYPE (t2)));
    }

  if (TYPE_PTRMEM_P (t1) && TYPE_PTRMEM_P (t2))







    return casts_away_constness
      (build_pointer_type (TYPE_PTRMEM_POINTED_TO_TYPE (t1)),
       build_pointer_type (TYPE_PTRMEM_POINTED_TO_TYPE (t2)));



  if (TREE_CODE (t1) != POINTER_TYPE
      || TREE_CODE (t2) != POINTER_TYPE)
    return 0;


  t1 = TYPE_MAIN_VARIANT (t1);
  t2 = TYPE_MAIN_VARIANT (t2);
  casts_away_constness_r (&t1, &t2);
  if (!can_convert (t2, t1))
    return 1;

  return 0;
}
