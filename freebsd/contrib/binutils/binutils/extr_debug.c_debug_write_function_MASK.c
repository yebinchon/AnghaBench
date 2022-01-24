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
struct debug_write_fns {int /*<<< orphan*/  (* end_function ) (void*) ;int /*<<< orphan*/  (* function_parameter ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* start_function ) (void*,char const*,int) ;} ;
struct debug_parameter {int /*<<< orphan*/  val; int /*<<< orphan*/  kind; int /*<<< orphan*/  name; int /*<<< orphan*/  type; struct debug_parameter* next; } ;
struct debug_name {int dummy; } ;
struct debug_handle {int dummy; } ;
struct debug_function {struct debug_block* blocks; struct debug_parameter* parameters; int /*<<< orphan*/  return_type; } ;
struct debug_block {struct debug_block* next; int /*<<< orphan*/  start; } ;
typedef  enum debug_object_linkage { ____Placeholder_debug_object_linkage } debug_object_linkage ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int DEBUG_LINKAGE_GLOBAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct debug_handle*,struct debug_write_fns const*,void*,struct debug_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct debug_handle*,struct debug_write_fns const*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct debug_handle*,struct debug_write_fns const*,void*,int /*<<< orphan*/ ,struct debug_name*) ; 
 int /*<<< orphan*/  FUNC3 (void*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (struct debug_handle *info,
		      const struct debug_write_fns *fns, void *fhandle,
		      const char *name, enum debug_object_linkage linkage,
		      struct debug_function *function)
{
  struct debug_parameter *p;
  struct debug_block *b;

  if (! FUNC1 (info, fns, fhandle, function->blocks->start))
    return FALSE;

  if (! FUNC2 (info, fns, fhandle, function->return_type,
			  (struct debug_name *) NULL))
    return FALSE;

  if (! (*fns->start_function) (fhandle, name,
				linkage == DEBUG_LINKAGE_GLOBAL))
    return FALSE;

  for (p = function->parameters; p != NULL; p = p->next)
    {
      if (! FUNC2 (info, fns, fhandle, p->type,
			      (struct debug_name *) NULL)
	  || ! (*fns->function_parameter) (fhandle, p->name, p->kind, p->val))
	return FALSE;
    }

  for (b = function->blocks; b != NULL; b = b->next)
    {
      if (! FUNC0 (info, fns, fhandle, b))
	return FALSE;
    }

  return (*fns->end_function) (fhandle);
}