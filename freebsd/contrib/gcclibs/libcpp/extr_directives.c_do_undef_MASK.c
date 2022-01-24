#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  (* undef ) (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ;} ;
struct TYPE_17__ {int /*<<< orphan*/  directive_line; TYPE_1__ cb; } ;
typedef  TYPE_2__ cpp_reader ;
struct TYPE_18__ {scalar_t__ type; int flags; } ;
typedef  TYPE_3__ cpp_hashnode ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_WARNING ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int NODE_WARN ; 
 scalar_t__ NT_MACRO ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  warn_unused_macros ; 

__attribute__((used)) static void
FUNC8 (cpp_reader *pfile)
{
  cpp_hashnode *node = FUNC6 (pfile);

  if (node)
    {
      if (pfile->cb.undef)
	pfile->cb.undef (pfile, pfile->directive_line, node);

      /* 6.10.3.5 paragraph 2: [#undef] is ignored if the specified
	 identifier is not currently defined as a macro name.  */
      if (node->type == NT_MACRO)
	{
	  if (node->flags & NODE_WARN)
	    FUNC5 (pfile, CPP_DL_WARNING,
		       "undefining \"%s\"", FUNC1 (node));

	  if (FUNC0 (pfile, warn_unused_macros))
	    FUNC3 (pfile, node, NULL);

	  FUNC2 (node);
	}
    }

  FUNC4 (pfile);
}