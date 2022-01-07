
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_LENGTH (struct type*) ;
 scalar_t__ TYPE_UNSIGNED (struct type*) ;

__attribute__((used)) static int
type_wider_than (struct type *type1, struct type *type2)
{
  return (TYPE_LENGTH (type1) > TYPE_LENGTH (type2)
   || (TYPE_LENGTH (type1) == TYPE_LENGTH (type2)
       && TYPE_UNSIGNED (type1)
       && !TYPE_UNSIGNED (type2)));
}
