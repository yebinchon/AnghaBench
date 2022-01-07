
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;
struct c_scope {int dummy; } ;
typedef int location_t ;


 int bind (char*,int ,struct c_scope*,int,int) ;
 scalar_t__ current_function_decl ;
 struct c_scope* current_function_scope ;
 struct c_scope* current_scope ;
 int error (char*,int *,...) ;
 int error_mark_node ;

void
undeclared_variable (tree id, location_t loc)
{
  static bool already = 0;
  struct c_scope *scope;

  if (current_function_decl == 0)
    {
      error ("%H%qE undeclared here (not in a function)", &loc, id);
      scope = current_scope;
    }
  else
    {
      error ("%H%qE undeclared (first use in this function)", &loc, id);

      if (!already)
 {
   error ("%H(Each undeclared identifier is reported only once", &loc);
   error ("%Hfor each function it appears in.)", &loc);
   already = 1;
 }



      scope = current_function_scope ? current_function_scope : current_scope;
    }
  bind (id, error_mark_node, scope, 0, 0);
}
