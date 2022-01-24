#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  macro_arg ;
struct TYPE_25__ {int angled_headers; int parsing_args; int /*<<< orphan*/  prevent_expansion; } ;
struct TYPE_28__ {int mi_valid; TYPE_1__ state; int /*<<< orphan*/  keep_tokens; } ;
typedef  TYPE_4__ cpp_reader ;
struct TYPE_27__ {int /*<<< orphan*/  tokens; } ;
struct TYPE_29__ {scalar_t__ paramc; int used; int /*<<< orphan*/  count; TYPE_3__ exp; int /*<<< orphan*/  syshdr; scalar_t__ fun_like; } ;
typedef  TYPE_5__ cpp_macro ;
struct TYPE_26__ {TYPE_5__* macro; } ;
struct TYPE_30__ {int flags; TYPE_2__ value; } ;
typedef  TYPE_6__ cpp_hashnode ;
struct TYPE_31__ {scalar_t__ base; } ;
typedef  TYPE_7__ _cpp_buff ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_WARNING ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int NODE_BUILTIN ; 
 int NODE_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_7__*) ; 
 int FUNC4 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC6 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8 (cpp_reader *pfile, cpp_hashnode *node)
{
  /* The presence of a macro invalidates a file's controlling macro.  */
  pfile->mi_valid = false;

  pfile->state.angled_headers = false;

  /* Handle standard macros.  */
  if (! (node->flags & NODE_BUILTIN))
    {
      cpp_macro *macro = node->value.macro;

      if (macro->fun_like)
	{
	  _cpp_buff *buff;

	  pfile->state.prevent_expansion++;
	  pfile->keep_tokens++;
	  pfile->state.parsing_args = 1;
	  buff = FUNC6 (pfile, node);
	  pfile->state.parsing_args = 0;
	  pfile->keep_tokens--;
	  pfile->state.prevent_expansion--;

	  if (buff == NULL)
	    {
	      if (FUNC0 (pfile) && ! node->value.macro->syshdr)
		FUNC5 (pfile, CPP_DL_WARNING,
 "function-like macro \"%s\" must be used with arguments in traditional C",
			   FUNC1 (node));

	      return 0;
	    }

	  if (macro->paramc > 0)
	    FUNC7 (pfile, node, macro, (macro_arg *) buff->base);
	  FUNC3 (pfile, buff);
	}

      /* Disable the macro within its expansion.  */
      node->flags |= NODE_DISABLED;

      macro->used = 1;

      if (macro->paramc == 0)
	FUNC2 (pfile, node, macro->exp.tokens, macro->count);

      return 1;
    }

  /* Handle built-in macros and the _Pragma operator.  */
  return FUNC4 (pfile, node);
}