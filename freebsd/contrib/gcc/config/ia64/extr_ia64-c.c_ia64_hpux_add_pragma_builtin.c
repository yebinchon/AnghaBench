
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int c89name; int realname; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int IDENTIFIER_POINTER (int ) ;
 int add_to_renaming_pragma_list (int ,int ) ;
 TYPE_1__* c89_mathlib_name_list ;
 scalar_t__ flag_iso ;
 int flag_isoc94 ;
 int get_identifier (int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void
ia64_hpux_add_pragma_builtin (tree func)
{
  size_t i;

  if (!flag_isoc94 && flag_iso)
    {
 for (i = 0; i < ARRAY_SIZE (c89_mathlib_name_list); i++)
   {
     if (!strcmp(c89_mathlib_name_list[i].realname,
   IDENTIFIER_POINTER (func)))
       {
  add_to_renaming_pragma_list(func,
   get_identifier(c89_mathlib_name_list[i].c89name));
       }
   }
    }
}
