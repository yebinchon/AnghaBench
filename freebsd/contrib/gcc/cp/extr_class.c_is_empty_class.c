
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int CLASSTYPE_EMPTY_P (scalar_t__) ;
 int CLASSTYPE_SIZE (scalar_t__) ;
 int IS_AGGR_TYPE (scalar_t__) ;
 scalar_t__ abi_version_at_least (int) ;
 scalar_t__ error_mark_node ;
 int integer_zerop (int ) ;

int
is_empty_class (tree type)
{
  if (type == error_mark_node)
    return 0;

  if (! IS_AGGR_TYPE (type))
    return 0;



  if (abi_version_at_least (2))
    return CLASSTYPE_EMPTY_P (type);
  else
    return integer_zerop (CLASSTYPE_SIZE (type));
}
