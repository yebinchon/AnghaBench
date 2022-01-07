
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ same_type_p (int ,int ) ;
 int type_decays_to (int ) ;
 int type_promotes_to (int ) ;

tree
cxx_type_promotes_to (tree type)
{
  tree promote;



  type = type_decays_to (type);

  promote = type_promotes_to (type);
  if (same_type_p (type, promote))
    promote = type;

  return promote;
}
