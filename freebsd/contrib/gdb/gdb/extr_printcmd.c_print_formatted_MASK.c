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
struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int /*<<< orphan*/  TYPE_CODE_ARRAY ; 
 int /*<<< orphan*/  TYPE_CODE_NAMESPACE ; 
 int /*<<< orphan*/  TYPE_CODE_STRING ; 
 int /*<<< orphan*/  TYPE_CODE_STRUCT ; 
 int /*<<< orphan*/  TYPE_CODE_UNION ; 
 int FUNC1 (struct type*) ; 
 scalar_t__ FUNC2 (struct value*) ; 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 scalar_t__ FUNC5 (struct value*) ; 
 int /*<<< orphan*/  FUNC6 (struct value*) ; 
 int /*<<< orphan*/  Val_pretty_default ; 
 struct type* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,struct ui_file*) ; 
 scalar_t__ lval_memory ; 
 scalar_t__ next_address ; 
 int /*<<< orphan*/  next_section ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct type*,int,int,struct ui_file*) ; 
 scalar_t__ FUNC10 (scalar_t__,int,int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC11 (struct value*,struct ui_file*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13 (struct value *val, int format, int size,
		 struct ui_file *stream)
{
  struct type *type = FUNC7 (FUNC6 (val));
  int len = FUNC1 (type);

  if (FUNC5 (val) == lval_memory)
    {
      next_address = FUNC2 (val) + len;
      next_section = FUNC3 (val);
    }

  switch (format)
    {
    case 's':
      /* FIXME: Need to handle wchar_t's here... */
      next_address = FUNC2 (val)
	+ FUNC10 (FUNC2 (val), -1, 1, stream);
      next_section = FUNC3 (val);
      break;

    case 'i':
      /* The old comment says
         "Force output out, print_insn not using _filtered".
         I'm not completely sure what that means, I suspect most print_insn
         now do use _filtered, so I guess it's obsolete.
         --Yes, it does filter now, and so this is obsolete.  -JB  */

      /* We often wrap here if there are long symbolic names.  */
      FUNC12 ("    ");
      next_address = FUNC2 (val)
	+ FUNC8 (FUNC2 (val), stream);
      next_section = FUNC3 (val);
      break;

    default:
      if (format == 0
	  || FUNC0 (type) == TYPE_CODE_ARRAY
	  || FUNC0 (type) == TYPE_CODE_STRING
	  || FUNC0 (type) == TYPE_CODE_STRUCT
	  || FUNC0 (type) == TYPE_CODE_UNION
	  || FUNC0 (type) == TYPE_CODE_NAMESPACE)
	/* If format is 0, use the 'natural' format for
	 * that type of value.  If the type is non-scalar,
	 * we have to use language rules to print it as
	 * a series of scalars.
	 */
	FUNC11 (val, stream, format, Val_pretty_default);
      else
	/* User specified format, so don't look to the
	 * the type to tell us what to do.
	 */
	FUNC9 (FUNC4 (val), type,
				format, size, stream);
    }
}