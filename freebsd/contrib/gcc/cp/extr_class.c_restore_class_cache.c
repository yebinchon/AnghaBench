
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_4__ {scalar_t__ type_shadowed; } ;


 int SET_IDENTIFIER_TYPE_VALUE (int ,int ) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_PURPOSE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 TYPE_1__* class_binding_level ;
 TYPE_1__* previous_class_level ;
 int push_binding_level (TYPE_1__*) ;

__attribute__((used)) static void
restore_class_cache (void)
{
  tree type;





  push_binding_level (previous_class_level);
  class_binding_level = previous_class_level;

  for (type = class_binding_level->type_shadowed;
       type;
       type = TREE_CHAIN (type))
    SET_IDENTIFIER_TYPE_VALUE (TREE_PURPOSE (type), TREE_TYPE (type));
}
