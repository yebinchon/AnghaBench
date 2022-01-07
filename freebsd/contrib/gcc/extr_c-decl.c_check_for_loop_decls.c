
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct c_binding {int decl; int id; struct c_binding* prev; } ;
struct TYPE_2__ {struct c_binding* bindings; } ;


 int BLOCK_SYNTHESIZED_FUNC (int ) ;
 int DECL_EXTERNAL (int ) ;


 int NULL_TREE ;

 int TREE_CODE (int ) ;
 int TREE_STATIC (int ) ;


 TYPE_1__* current_scope ;
 int error (char*,...) ;
 int flag_isoc99 ;

tree
check_for_loop_decls (void)
{
  struct c_binding *b;
  tree one_decl = NULL_TREE;
  int n_decls = 0;


  if (!flag_isoc99)
    {



      error ("%<for%> loop initial declaration used outside C99 mode");
      return NULL_TREE;
    }
  for (b = current_scope->bindings; b; b = b->prev)
    {
      tree id = b->id;
      tree decl = b->decl;

      if (!id)
 continue;

      switch (TREE_CODE (decl))
 {
 case 128:
   if (TREE_STATIC (decl))
     error ("declaration of static variable %q+D in %<for%> loop "
     "initial declaration", decl);
   else if (DECL_EXTERNAL (decl))
     error ("declaration of %<extern%> variable %q+D in %<for%> loop "
     "initial declaration", decl);
   break;

 case 130:
   error ("%<struct %E%> declared in %<for%> loop initial declaration",
   id);
   break;
 case 129:
   error ("%<union %E%> declared in %<for%> loop initial declaration",
   id);
   break;
 case 132:
   error ("%<enum %E%> declared in %<for%> loop initial declaration",
   id);
   break;

  case 131:


 if (BLOCK_SYNTHESIZED_FUNC (decl))
  break;

 default:
   error ("declaration of non-variable %q+D in %<for%> loop "
   "initial declaration", decl);
 }

      n_decls++;
      one_decl = decl;
    }

  return n_decls == 1 ? one_decl : NULL_TREE;
}
