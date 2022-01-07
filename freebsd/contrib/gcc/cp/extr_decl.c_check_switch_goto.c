
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_binding_level {int names; } ;


 int NULL_TREE ;
 int check_previous_goto_1 (int ,struct cp_binding_level*,int ,int,int *) ;

__attribute__((used)) static bool
check_switch_goto (struct cp_binding_level* level)
{
  return check_previous_goto_1 (NULL_TREE, level, level->names, 0, ((void*)0));
}
