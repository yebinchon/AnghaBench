#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  la_language; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOUND_CANNOT_BE_DETERMINED ; 
 int /*<<< orphan*/  QUIT ; 
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int FUNC1 (struct type*) ; 
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
 int /*<<< orphan*/  FUNC2 (struct type*,int) ; 
 int FUNC3 (struct type*) ; 
 scalar_t__ FUNC4 (struct type*) ; 
 int FUNC5 (struct type*) ; 
 int /*<<< orphan*/  FUNC6 (struct type*) ; 
 struct type* FUNC7 (struct type*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct ui_file*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct type*,struct ui_file*) ; 
 TYPE_1__* current_language ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  language_cplus ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

void
FUNC14 (struct type *type, struct ui_file *stream,
			     int show, int passed_a_ptr, int demangled_args)
{
  if (type == 0)
    return;

  if (FUNC4 (type) && show <= 0)
    return;

  QUIT;

  switch (FUNC1 (type))
    {
    case TYPE_CODE_ARRAY:
      if (passed_a_ptr)
	FUNC11 (stream, ")");

      FUNC11 (stream, "[");
      if (FUNC3 (type) >= 0 && FUNC3 (FUNC7 (type)) > 0
	&& FUNC0 (type) != BOUND_CANNOT_BE_DETERMINED)
	FUNC11 (stream, "%d",
			  (FUNC3 (type)
			   / FUNC3 (FUNC7 (type))));
      FUNC11 (stream, "]");

      FUNC14 (FUNC7 (type), stream, show,
				   0, 0);
      break;

    case TYPE_CODE_MEMBER:
      if (passed_a_ptr)
	FUNC11 (stream, ")");
      FUNC14 (FUNC7 (type), stream, show,
				   0, 0);
      break;

    case TYPE_CODE_METHOD:
      if (passed_a_ptr)
	FUNC11 (stream, ")");
      FUNC14 (FUNC7 (type), stream, show,
				   0, 0);
      if (passed_a_ptr)
	{
	  FUNC9 (type, stream);
	}
      break;

    case TYPE_CODE_PTR:
    case TYPE_CODE_REF:
      FUNC14 (FUNC7 (type), stream, show,
				   1, 0);
      break;

    case TYPE_CODE_FUNC:
      if (passed_a_ptr)
	FUNC11 (stream, ")");
      if (!demangled_args)
	{
	  int i, len = FUNC5 (type);
	  FUNC11 (stream, "(");
	  if (len == 0
              && (FUNC6 (type)
                  || current_language->la_language == language_cplus))
	    {
	      FUNC11 (stream, "void");
	    }
	  else
	    for (i = 0; i < len; i++)
	      {
		if (i > 0)
		  {
		    FUNC12 (", ", stream);
		    FUNC13 ("    ");
		  }
		FUNC8 (FUNC2 (type, i), "", stream, -1, 0);
	      }
	  FUNC11 (stream, ")");
	}
      FUNC14 (FUNC7 (type), stream, show,
				   passed_a_ptr, 0);
      break;

    case TYPE_CODE_TYPEDEF:
      FUNC14 (FUNC7 (type), stream, show,
				   passed_a_ptr, 0);
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
      /* These types do not need a suffix.  They are listed so that
         gcc -Wall will report types that may not have been considered.  */
      break;
    default:
      FUNC10 ("type not handled in c_type_print_varspec_suffix()");
      break;
    }
}