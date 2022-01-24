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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
#define  TYPE_CODE_BOOL 132 
#define  TYPE_CODE_CHAR 131 
#define  TYPE_CODE_ENUM 130 
#define  TYPE_CODE_INT 129 
#define  TYPE_CODE_RANGE 128 
 int /*<<< orphan*/  FUNC1 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (struct type*) ; 
 int FUNC4 (struct type*) ; 
 struct type* FUNC5 (struct type*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct type*,int /*<<< orphan*/  const,struct ui_file*) ; 
 struct type* builtin_type_ada_int ; 
 int /*<<< orphan*/  FUNC8 (struct ui_file*,char*,...) ; 

__attribute__((used)) static void
FUNC9 (struct type *type, struct ui_file *stream)
{
  struct type *target_type;
  target_type = FUNC5 (type);
  if (target_type == NULL)
    target_type = type;

  switch (FUNC0 (target_type))
    {
    case TYPE_CODE_RANGE:
    case TYPE_CODE_INT:
    case TYPE_CODE_BOOL:
    case TYPE_CODE_CHAR:
    case TYPE_CODE_ENUM:
      break;
    default:
      target_type = builtin_type_ada_int;
      break;
    }

  if (FUNC4 (type) < 2)
    {
      /* A range needs at least 2 bounds to be printed. If there are less
         than 2, just print the type name instead of the range itself.
         This check handles cases such as characters, for example. 

         Note that if the name is not defined, then we don't print anything.
       */
      FUNC8 (stream, "%.*s",
			FUNC6 (FUNC3 (type)),
			FUNC3 (type));
    }
  else
    {
      /* We extract the range type bounds respectively from the first element
         and the last element of the type->fields array */
      const LONGEST lower_bound = (LONGEST) FUNC2 (type);
      const LONGEST upper_bound =
	(LONGEST) FUNC1 (type, FUNC4 (type) - 1);

      FUNC7 (target_type, lower_bound, stream);
      FUNC8 (stream, " .. ");
      FUNC7 (target_type, upper_bound, stream);
    }
}