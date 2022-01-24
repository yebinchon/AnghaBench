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
#define  TYPE_CODE_ARRAY 151 
#define  TYPE_CODE_BITSTRING 150 
#define  TYPE_CODE_BOOL 149 
#define  TYPE_CODE_CHAR 148 
#define  TYPE_CODE_COMPLEX 147 
#define  TYPE_CODE_ENUM 146 
#define  TYPE_CODE_ERROR 145 
#define  TYPE_CODE_FLT 144 
#define  TYPE_CODE_FUNC 143 
#define  TYPE_CODE_INT 142 
#define  TYPE_CODE_MEMBER 141 
#define  TYPE_CODE_METHOD 140 
#define  TYPE_CODE_NAMESPACE 139 
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
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 struct type* FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ui_file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct type*,struct ui_file*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct ui_file*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10 (struct type *type, struct ui_file *stream,
			     int show, int passed_a_ptr, int need_post_space)
{
  char *name;
  if (type == 0)
    return;

  if (FUNC2 (type) && show <= 0)
    return;

  QUIT;

  switch (FUNC0 (type))
    {
    case TYPE_CODE_PTR:
      FUNC10 (FUNC3 (type), stream, show, 1, 1);
      FUNC7 (stream, "*");
      FUNC5 (type, stream, 1, need_post_space);
      break;

    case TYPE_CODE_MEMBER:
      if (passed_a_ptr)
	FUNC7 (stream, "(");
      FUNC10 (FUNC3 (type), stream, show, 0, 0);
      FUNC7 (stream, " ");
      name = FUNC9 (FUNC1 (type));
      if (name)
	FUNC8 (name, stream);
      else
	FUNC4 (FUNC1 (type), stream, 0, passed_a_ptr);
      FUNC7 (stream, "::");
      break;

    case TYPE_CODE_METHOD:
      if (passed_a_ptr)
	FUNC7 (stream, "(");
      FUNC10 (FUNC3 (type), stream, show, 0, 0);
      if (passed_a_ptr)
	{
	  FUNC7 (stream, " ");
	  FUNC4 (FUNC1 (type), stream, 0, passed_a_ptr);
	  FUNC7 (stream, "::");
	}
      break;

    case TYPE_CODE_REF:
      FUNC10 (FUNC3 (type), stream, show, 1, 0);
      FUNC7 (stream, "&");
      FUNC5 (type, stream, 1, need_post_space);
      break;

    case TYPE_CODE_FUNC:
      FUNC10 (FUNC3 (type), stream, show, 0, 0);
      if (passed_a_ptr)
	FUNC7 (stream, "(");
      break;

    case TYPE_CODE_ARRAY:
      FUNC10 (FUNC3 (type), stream, show, 0, 0);
      if (passed_a_ptr)
	FUNC7 (stream, "(");
      break;

    case TYPE_CODE_TYPEDEF:
      FUNC10 (FUNC3 (type), stream, show, 0, 0);
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
    case TYPE_CODE_TEMPLATE:
    case TYPE_CODE_NAMESPACE:
      /* These types need no prefix.  They are listed here so that
         gcc -Wall will reveal any types that haven't been handled.  */
      break;
    default:
      FUNC6 ("type not handled in c_type_print_varspec_prefix()");
      break;
    }
}