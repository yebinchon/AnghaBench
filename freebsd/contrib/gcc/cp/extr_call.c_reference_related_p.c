
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CLASS_TYPE_P (int ) ;
 scalar_t__ DERIVED_FROM_P (int ,int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 scalar_t__ same_type_p (int ,int ) ;

__attribute__((used)) static bool
reference_related_p (tree t1, tree t2)
{
  t1 = TYPE_MAIN_VARIANT (t1);
  t2 = TYPE_MAIN_VARIANT (t2);






  return (same_type_p (t1, t2)
   || (CLASS_TYPE_P (t1) && CLASS_TYPE_P (t2)
       && DERIVED_FROM_P (t1, t2)));
}
