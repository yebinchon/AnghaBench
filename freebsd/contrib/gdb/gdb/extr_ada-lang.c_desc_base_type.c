
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_PTR ;
 int TYPE_TARGET_TYPE (struct type*) ;
 struct type* check_typedef (int ) ;

__attribute__((used)) static struct type *
desc_base_type (struct type *type)
{
  if (type == ((void*)0))
    return ((void*)0);
  CHECK_TYPEDEF (type);
  if (type != ((void*)0) && TYPE_CODE (type) == TYPE_CODE_PTR)
    return check_typedef (TYPE_TARGET_TYPE (type));
  else
    return type;
}
