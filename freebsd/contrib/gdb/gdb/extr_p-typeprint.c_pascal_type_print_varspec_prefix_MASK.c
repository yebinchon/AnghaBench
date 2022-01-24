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

/* Variables and functions */
 int /*<<< orphan*/  BOUND_CANNOT_BE_DETERMINED ; 
 int /*<<< orphan*/  QUIT ; 
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (struct type*) ; 
 int FUNC3 (struct type*) ; 
#define  TYPE_CODE_ARRAY 150 
#define  TYPE_CODE_BITSTRING 149 
#define  TYPE_CODE_BOOL 148 
#define  TYPE_CODE_CHAR 147 
#define  TYPE_CODE_COMPLEX 146 
#define  TYPE_CODE_ENUM 145 
#define  TYPE_CODE_ERROR 144 
#define  TYPE_CODE_FLT 143 
#define  TYPE_CODE_FUNC 142 
#define  TYPE_CODE_INT 141 
#define  TYPE_CODE_MEMBER 140 
#define  TYPE_CODE_METHOD 139 
#define  TYPE_CODE_PTR 138 
#define  TYPE_CODE_RANGE 137 
#define  TYPE_CODE_REF 136 
#define  TYPE_CODE_SET 135 
#define  TYPE_CODE_STRING 134 
#define  TYPE_CODE_STRUCT 133 
#define  TYPE_CODE_TEMPLATE 132 
#define  TYPE_CODE_TYPEDEF 131 
#define  TYPE_CODE_UNDEF 130 
#define  TYPE_CODE_UNION 129 
#define  TYPE_CODE_VOID 128 
 int /*<<< orphan*/  FUNC4 (struct type*) ; 
 int /*<<< orphan*/  FUNC5 (struct type*) ; 
 scalar_t__ FUNC6 (struct type*) ; 
 struct type* FUNC7 (struct type*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct ui_file*,int /*<<< orphan*/ ,int) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 

void
FUNC13 (struct type *type, struct ui_file *stream,
				  int show, int passed_a_ptr)
{
  char *name;
  if (type == 0)
    return;

  if (FUNC6 (type) && show <= 0)
    return;

  QUIT;

  switch (FUNC3 (type))
    {
    case TYPE_CODE_PTR:
      FUNC9 (stream, "^");
      FUNC13 (FUNC7 (type), stream, 0, 1);
      break;			/* pointer should be handled normally in pascal */

    case TYPE_CODE_MEMBER:
      if (passed_a_ptr)
	FUNC9 (stream, "(");
      FUNC13 (FUNC7 (type), stream, 0, 0);
      FUNC9 (stream, " ");
      name = FUNC12 (FUNC4 (type));
      if (name)
	FUNC10 (name, stream);
      else
	FUNC11 (FUNC4 (type), stream, 0, passed_a_ptr);
      FUNC9 (stream, "::");
      break;

    case TYPE_CODE_METHOD:
      if (passed_a_ptr)
	FUNC9 (stream, "(");
      if (FUNC3 (FUNC7 (type)) != TYPE_CODE_VOID)
	{
	  FUNC9 (stream, "function  ");
	}
      else
	{
	  FUNC9 (stream, "procedure ");
	}

      if (passed_a_ptr)
	{
	  FUNC9 (stream, " ");
	  FUNC11 (FUNC4 (type), stream, 0, passed_a_ptr);
	  FUNC9 (stream, "::");
	}
      break;

    case TYPE_CODE_REF:
      FUNC13 (FUNC7 (type), stream, 0, 1);
      FUNC9 (stream, "&");
      break;

    case TYPE_CODE_FUNC:
      if (passed_a_ptr)
	FUNC9 (stream, "(");

      if (FUNC3 (FUNC7 (type)) != TYPE_CODE_VOID)
	{
	  FUNC9 (stream, "function  ");
	}
      else
	{
	  FUNC9 (stream, "procedure ");
	}

      break;

    case TYPE_CODE_ARRAY:
      if (passed_a_ptr)
	FUNC9 (stream, "(");
      FUNC9 (stream, "array ");
      if (FUNC5 (type) >= 0 && FUNC5 (FUNC7 (type)) > 0
	&& FUNC1 (type) != BOUND_CANNOT_BE_DETERMINED)
	FUNC9 (stream, "[%d..%d] ",
			  FUNC0 (type),
			  FUNC2 (type)
	  );
      FUNC9 (stream, "of ");
      break;

    case TYPE_CODE_UNDEF:
    case TYPE_CODE_STRUCT:
    case TYPE_CODE_UNION:
    case TYPE_CODE_ENUM:
    case TYPE_CODE_INT:
    case TYPE_CODE_FLT:
    case TYPE_CODE_VOID:
    case TYPE_CODE_ERROR:
    case TYPE_CODE_CHAR:
    case TYPE_CODE_BOOL:
    case TYPE_CODE_SET:
    case TYPE_CODE_RANGE:
    case TYPE_CODE_STRING:
    case TYPE_CODE_BITSTRING:
    case TYPE_CODE_COMPLEX:
    case TYPE_CODE_TYPEDEF:
    case TYPE_CODE_TEMPLATE:
      /* These types need no prefix.  They are listed here so that
         gcc -Wall will reveal any types that haven't been handled.  */
      break;
    default:
      FUNC8 ("type not handled in pascal_type_print_varspec_prefix()");
      break;
    }
}