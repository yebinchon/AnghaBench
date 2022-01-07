
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char* tree ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
typedef int splay_tree ;
struct TYPE_5__ {int names_used; } ;
struct TYPE_4__ {scalar_t__ value; } ;


 int DECL_NAME (int ) ;
 int OVL_CURRENT (char*) ;
 int current_class_depth ;
 TYPE_3__* current_class_stack ;
 int error (char*,char*,...) ;
 TYPE_1__* splay_tree_lookup (int ,int ) ;

void
note_name_declared_in_class (tree name, tree decl)
{
  splay_tree names_used;
  splay_tree_node n;


  names_used
    = current_class_stack[current_class_depth - 1].names_used;
  if (!names_used)
    return;

  n = splay_tree_lookup (names_used, (splay_tree_key) name);
  if (n)
    {





      error ("declaration of %q#D", decl);
      error ("changes meaning of %qD from %q+#D",
      DECL_NAME (OVL_CURRENT (decl)), (tree) n->value);
    }
}
