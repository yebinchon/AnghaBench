
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENABLE_SCOPE_CHECKING ;
 int begin_scope (int ,int ) ;
 int class_binding_level ;
 int current_class_type ;
 int is_class_level ;
 int sk_class ;

void
pushlevel_class (void)
{
  if (ENABLE_SCOPE_CHECKING)
    is_class_level = 1;

  class_binding_level = begin_scope (sk_class, current_class_type);
}
