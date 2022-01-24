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
 int /*<<< orphan*/  QUIT ; 
 int FUNC0 (struct type*) ; 
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
 scalar_t__ FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct type*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC6 (struct type*,struct ui_file*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC8 (struct type*,struct ui_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (struct type *type, struct ui_file *stream,
				  int show, int passed_a_ptr,
				  int demangled_args)
{
  if (type == 0)
    return;

  if (FUNC1 (type) && show <= 0)
    return;

  QUIT;

  switch (FUNC0 (type))
    {
    case TYPE_CODE_ARRAY:
      if (passed_a_ptr)
	FUNC4 (stream, ")");
      break;

    case TYPE_CODE_MEMBER:
      if (passed_a_ptr)
	FUNC4 (stream, ")");
      FUNC9 (FUNC2 (type), stream, 0, 0, 0);
      break;

    case TYPE_CODE_METHOD:
      if (passed_a_ptr)
	FUNC4 (stream, ")");
      FUNC7 ("",
				     "",
				     stream);
      if (FUNC0 (FUNC2 (type)) != TYPE_CODE_VOID)
	{
	  FUNC4 (stream, " : ");
	  FUNC8 (FUNC2 (type), stream, 0, 0);
	  FUNC6 (FUNC2 (type), stream, show, 0);
	  FUNC9 (FUNC2 (type), stream, 0,
					    passed_a_ptr, 0);
	}
      break;

    case TYPE_CODE_PTR:
    case TYPE_CODE_REF:
      FUNC9 (FUNC2 (type), stream, 0, 1, 0);
      break;

    case TYPE_CODE_FUNC:
      if (passed_a_ptr)
	FUNC4 (stream, ")");
      if (!demangled_args)
	FUNC5 (type, stream);
      if (FUNC0 (FUNC2 (type)) != TYPE_CODE_VOID)
	{
	  FUNC4 (stream, " : ");
	  FUNC8 (FUNC2 (type), stream, 0, 0);
	  FUNC6 (FUNC2 (type), stream, show, 0);
	  FUNC9 (FUNC2 (type), stream, 0,
					    passed_a_ptr, 0);
	}
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
      /* These types do not need a suffix.  They are listed so that
         gcc -Wall will report types that may not have been considered.  */
      break;
    default:
      FUNC3 ("type not handled in pascal_type_print_varspec_suffix()");
      break;
    }
}