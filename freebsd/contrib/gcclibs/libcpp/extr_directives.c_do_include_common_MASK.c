#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  enum include_type { ____Placeholder_include_type } include_type ;
typedef  int /*<<< orphan*/  cpp_token ;
struct TYPE_15__ {int /*<<< orphan*/  (* include ) (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/  const**) ;} ;
struct TYPE_13__ {int save_comments; } ;
struct TYPE_17__ {TYPE_4__* directive; int /*<<< orphan*/  directive_line; TYPE_3__ cb; TYPE_2__* line_table; TYPE_1__ state; } ;
typedef  TYPE_5__ cpp_reader ;
struct TYPE_16__ {int /*<<< orphan*/  name; } ;
struct TYPE_14__ {scalar_t__ depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ CPP_STACK_MAX ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  discard_comments ; 
 char* FUNC4 (TYPE_5__*,int*,int /*<<< orphan*/  const***) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static void
FUNC7 (cpp_reader *pfile, enum include_type type)
{
  const char *fname;
  int angle_brackets;
  const cpp_token **buf = NULL;

  /* Re-enable saving of comments if requested, so that the include
     callback can dump comments which follow #include.  */
  pfile->state.save_comments = ! FUNC0 (pfile, discard_comments);

  fname = FUNC4 (pfile, &angle_brackets, &buf);
  if (!fname)
    {
      if (buf)
	FUNC1 (buf);
      return;
    }

  if (!*fname)
  {
    FUNC3 (pfile, CPP_DL_ERROR, "empty filename in #%s",
               pfile->directive->name);
    FUNC1 (fname);
    if (buf)
      FUNC1 (buf);
    return;
  }

  /* Prevent #include recursion.  */
  if (pfile->line_table->depth >= CPP_STACK_MAX)
    FUNC3 (pfile, CPP_DL_ERROR, "#include nested too deeply");
  else
    {
      /* Get out of macro context, if we are.  */
      FUNC5 (pfile);

      if (pfile->cb.include)
	pfile->cb.include (pfile, pfile->directive_line,
			   pfile->directive->name, fname, angle_brackets,
			   buf);

      FUNC2 (pfile, fname, angle_brackets, type);
    }

  FUNC1 (fname);
  if (buf)
    FUNC1 (buf);
}