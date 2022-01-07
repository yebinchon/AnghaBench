
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_symbol {struct coff_symbol* next; } ;
struct coff_sfile {int dummy; } ;
struct coff_section {int dummy; } ;
struct coff_scope {struct coff_scope* next; struct coff_scope* list_head; struct coff_symbol* vars_head; } ;


 int BLOCK_TYPE_BLOCK ;
 int tree ;
 int walk_tree_symbol (struct coff_sfile*,struct coff_section*,struct coff_symbol*,int) ;
 int wr_dps_end (struct coff_section*,struct coff_scope*,int) ;
 int wr_dps_start (struct coff_sfile*,struct coff_section*,struct coff_scope*,int,int) ;
 int wr_globals (int ,struct coff_sfile*,int) ;

__attribute__((used)) static void
walk_tree_scope (struct coff_section *section, struct coff_sfile *sfile, struct coff_scope *scope, int nest, int type)
{
  struct coff_symbol *vars;
  struct coff_scope *child;

  if (scope->vars_head
      || (scope->list_head && scope->list_head->vars_head))
    {
      wr_dps_start (sfile, section, scope, type, nest);

      if (nest == 0)
 wr_globals (tree, sfile, nest + 1);

      for (vars = scope->vars_head; vars; vars = vars->next)
 walk_tree_symbol (sfile, section, vars, nest);

      for (child = scope->list_head; child; child = child->next)
 walk_tree_scope (section, sfile, child, nest + 1, BLOCK_TYPE_BLOCK);

      wr_dps_end (section, scope, type);
    }
}
