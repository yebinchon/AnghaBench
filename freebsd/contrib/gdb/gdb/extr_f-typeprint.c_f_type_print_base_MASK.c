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
 int BOUND_FETCH_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int /*<<< orphan*/  QUIT ; 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 int FUNC2 (struct type*) ; 
#define  TYPE_CODE_ARRAY 141 
#define  TYPE_CODE_CHAR 140 
#define  TYPE_CODE_COMPLEX 139 
#define  TYPE_CODE_ERROR 138 
#define  TYPE_CODE_FLT 137 
#define  TYPE_CODE_FUNC 136 
#define  TYPE_CODE_INT 135 
#define  TYPE_CODE_PTR 134 
#define  TYPE_CODE_RANGE 133 
#define  TYPE_CODE_REF 132 
#define  TYPE_CODE_STRING 131 
#define  TYPE_CODE_TYPEDEF 130 
#define  TYPE_CODE_UNDEF 129 
#define  TYPE_CODE_VOID 128 
 int FUNC3 (struct type*) ; 
 char* FUNC4 (struct type*) ; 
 struct type* FUNC5 (struct type*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (struct type*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC10 (struct type*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

void
FUNC13 (struct type *type, struct ui_file *stream, int show,
		   int level)
{
  int retcode;
  int upper_bound;

  QUIT;

  FUNC12 ("    ");
  if (type == NULL)
    {
      FUNC9 ("<type unknown>", stream);
      return;
    }

  /* When SHOW is zero or less, and there is a valid type name, then always
     just print the type name directly from the type. */

  if ((show <= 0) && (FUNC4 (type) != NULL))
    {
      if (FUNC2 (type) == TYPE_CODE_FLT)
	FUNC10 (type, stream);
      else
	FUNC9 (FUNC4 (type), stream);
      return;
    }

  if (FUNC2 (type) != TYPE_CODE_TYPEDEF)
    FUNC0 (type);

  switch (FUNC2 (type))
    {
    case TYPE_CODE_TYPEDEF:
      FUNC13 (FUNC5 (type), stream, 0, level);
      break;

    case TYPE_CODE_ARRAY:
    case TYPE_CODE_FUNC:
      FUNC13 (FUNC5 (type), stream, show, level);
      break;

    case TYPE_CODE_PTR:
      FUNC8 (stream, "PTR TO -> ( ");
      FUNC13 (FUNC5 (type), stream, 0, level);
      break;

    case TYPE_CODE_REF:
      FUNC8 (stream, "REF TO -> ( ");
      FUNC13 (FUNC5 (type), stream, 0, level);
      break;

    case TYPE_CODE_VOID:
      FUNC8 (stream, "VOID");
      break;

    case TYPE_CODE_UNDEF:
      FUNC8 (stream, "struct <unknown>");
      break;

    case TYPE_CODE_ERROR:
      FUNC8 (stream, "<unknown type>");
      break;

    case TYPE_CODE_RANGE:
      /* This should not occur */
      FUNC8 (stream, "<range type>");
      break;

    case TYPE_CODE_CHAR:
      /* Override name "char" and make it "character" */
      FUNC8 (stream, "character");
      break;

    case TYPE_CODE_INT:
      /* There may be some character types that attempt to come
         through as TYPE_CODE_INT since dbxstclass.h is so
         C-oriented, we must change these to "character" from "char".  */

      if (FUNC11 (FUNC4 (type), "char") == 0)
	FUNC8 (stream, "character");
      else
	goto default_case;
      break;

    case TYPE_CODE_COMPLEX:
      FUNC8 (stream, "complex*%d", FUNC3 (type));
      break;

    case TYPE_CODE_FLT:
      FUNC10 (type, stream);
      break;

    case TYPE_CODE_STRING:
      /* Strings may have dynamic upperbounds (lengths) like arrays. */

      if (FUNC1 (type) == BOUND_CANNOT_BE_DETERMINED)
	FUNC8 (stream, "character*(*)");
      else
	{
	  retcode = FUNC7 (type, &upper_bound);

	  if (retcode == BOUND_FETCH_ERROR)
	    FUNC8 (stream, "character*???");
	  else
	    FUNC8 (stream, "character*%d", upper_bound);
	}
      break;

    default_case:
    default:
      /* Handle types not explicitly handled by the other cases,
         such as fundamental types.  For these, just print whatever
         the type name is, as recorded in the type itself.  If there
         is no type name, then complain. */
      if (FUNC4 (type) != NULL)
	FUNC9 (FUNC4 (type), stream);
      else
	FUNC6 ("Invalid type code (%d) in symbol table.", FUNC2 (type));
      break;
    }
}