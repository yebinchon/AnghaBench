
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ at_least_as_qualified_p (int ,int ) ;
 scalar_t__ reference_related_p (int ,int ) ;

__attribute__((used)) static bool
reference_compatible_p (tree t1, tree t2)
{





  return (reference_related_p (t1, t2)
   && at_least_as_qualified_p (t1, t2));
}
