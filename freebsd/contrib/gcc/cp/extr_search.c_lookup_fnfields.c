
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int BASELINK_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int error_operand_p (scalar_t__) ;
 scalar_t__ lookup_member (scalar_t__,scalar_t__,int,int) ;

tree
lookup_fnfields (tree xbasetype, tree name, int protect)
{
  tree rval = lookup_member (xbasetype, name, protect, 0);


  if (!error_operand_p (rval)
      && (rval && !BASELINK_P (rval)))
    return NULL_TREE;

  return rval;
}
