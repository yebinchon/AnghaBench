#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct coff_symbol {struct coff_symbol* next; } ;
struct coff_sfile {int dummy; } ;
struct coff_section {int dummy; } ;
struct coff_scope {struct coff_scope* next; struct coff_scope* list_head; struct coff_symbol* vars_head; } ;

/* Variables and functions */
 int BLOCK_TYPE_BLOCK ; 
 int /*<<< orphan*/  tree ; 
 int /*<<< orphan*/  FUNC0 (struct coff_sfile*,struct coff_section*,struct coff_symbol*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct coff_section*,struct coff_scope*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct coff_sfile*,struct coff_section*,struct coff_scope*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct coff_sfile*,int) ; 

__attribute__((used)) static void
FUNC4 (struct coff_section *section, struct coff_sfile *sfile, struct coff_scope *scope, int nest, int type)
{
  struct coff_symbol *vars;
  struct coff_scope *child;

  if (scope->vars_head
      || (scope->list_head && scope->list_head->vars_head))
    {
      FUNC2 (sfile, section, scope, type, nest);

      if (nest == 0)
	FUNC3 (tree, sfile, nest + 1);

      for (vars = scope->vars_head; vars; vars = vars->next)
	FUNC0 (sfile, section, vars, nest);

      for (child = scope->list_head; child; child = child->next)
	FUNC4 (section, sfile, child, nest + 1, BLOCK_TYPE_BLOCK);

      FUNC1 (section, scope, type);
    }
}