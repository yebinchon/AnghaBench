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
struct symbol {int dummy; } ;
struct dwarf_expr_baton {int /*<<< orphan*/  frame; } ;
struct dwarf2_loclist_baton {int dummy; } ;
struct dwarf2_locexpr_baton {size_t size; unsigned char* data; } ;

/* Variables and functions */
 void* FUNC0 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/ * FUNC2 (struct symbol*) ; 
 int /*<<< orphan*/  dwarf2_loclist_funcs ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC4 (struct dwarf2_loclist_baton*,size_t*,int /*<<< orphan*/ ) ; 
 struct symbol* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (void *baton, unsigned char **start, size_t * length)
{
  /* FIXME: cagney/2003-03-26: This code should be using
     get_frame_base_address(), and then implement a dwarf2 specific
     this_base method.  */
  struct symbol *framefunc;
  struct dwarf_expr_baton *debaton = (struct dwarf_expr_baton *) baton;

  framefunc = FUNC5 (debaton->frame);

  if (FUNC2 (framefunc) == &dwarf2_loclist_funcs)
    {
      struct dwarf2_loclist_baton *symbaton;
      symbaton = FUNC0 (framefunc);
      *start = FUNC4 (symbaton, length,
					 FUNC6 (debaton->frame));
    }
  else
    {
      struct dwarf2_locexpr_baton *symbaton;
      symbaton = FUNC0 (framefunc);
      *length = symbaton->size;
      *start = symbaton->data;
    }

  if (*start == NULL)
    FUNC3 ("Could not find the frame base for \"%s\".",
	   FUNC1 (framefunc));
}