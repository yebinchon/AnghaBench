
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int PICFLAG_ERRONEOUS ;
 int PICFLAG_NOT_ALL_CONSTANT ;
 int PICFLAG_NOT_ALL_SIMPLE ;
 int TREE_CONSTANT (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ error_mark_node ;
 int initializer_constant_valid_p (scalar_t__,int ) ;

__attribute__((used)) static int
picflag_from_initializer (tree init)
{
  if (init == error_mark_node)
    return PICFLAG_ERRONEOUS;
  else if (!TREE_CONSTANT (init))
    return PICFLAG_NOT_ALL_CONSTANT;
  else if (!initializer_constant_valid_p (init, TREE_TYPE (init)))
    return PICFLAG_NOT_ALL_SIMPLE;
  return 0;
}
