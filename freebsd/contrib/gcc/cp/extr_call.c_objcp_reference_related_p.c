
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int reference_related_p (int ,int ) ;

bool
objcp_reference_related_p (tree t1, tree t2)
{
  return reference_related_p (t1, t2);
}
