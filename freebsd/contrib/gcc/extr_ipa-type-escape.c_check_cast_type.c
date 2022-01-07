
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum cast_type { ____Placeholder_cast_type } cast_type ;


 int CT_DOWN ;
 int CT_SIDEWAYS ;
 int CT_UP ;
 int CT_USELESS ;
 int count_stars (scalar_t__*) ;
 scalar_t__ parent_type_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static enum cast_type
check_cast_type (tree to_type, tree from_type)
{
  int to_stars = count_stars (&to_type);
  int from_stars = count_stars (&from_type);
  if (to_stars != from_stars)
    return CT_SIDEWAYS;

  if (to_type == from_type)
    return CT_USELESS;

  if (parent_type_p (to_type, from_type)) return CT_UP;
  if (parent_type_p (from_type, to_type)) return CT_DOWN;
  return CT_SIDEWAYS;
}
