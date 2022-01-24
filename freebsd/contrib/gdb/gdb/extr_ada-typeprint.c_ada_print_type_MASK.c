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
typedef  enum type_code { ____Placeholder_type_code } type_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int FUNC1 (struct type*) ; 
#define  TYPE_CODE_ARRAY 137 
#define  TYPE_CODE_ENUM 136 
#define  TYPE_CODE_FLT 135 
#define  TYPE_CODE_FUNC 134 
#define  TYPE_CODE_INT 133 
#define  TYPE_CODE_PTR 132 
#define  TYPE_CODE_RANGE 131 
#define  TYPE_CODE_REF 130 
#define  TYPE_CODE_STRUCT 129 
#define  TYPE_CODE_UNION 128 
 int /*<<< orphan*/  FUNC2 (struct type*) ; 
 struct type* FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct type*) ; 
 struct type* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct type*) ; 
 scalar_t__ FUNC7 (struct type*) ; 
 int /*<<< orphan*/  FUNC8 (struct type*) ; 
 int /*<<< orphan*/  FUNC9 (struct type*) ; 
 int /*<<< orphan*/  FUNC10 (struct type*) ; 
 int /*<<< orphan*/  FUNC11 (struct type*) ; 
 scalar_t__ FUNC12 (struct type*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct type*) ; 
 scalar_t__ FUNC15 (struct type*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 char* FUNC17 (struct type*) ; 
 int /*<<< orphan*/  FUNC18 (struct type*,char*,struct ui_file*,int,int) ; 
 char* FUNC19 (struct type*) ; 
 int /*<<< orphan*/  FUNC20 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC21 (struct type*,struct ui_file*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (struct type*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC23 (struct type*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC24 (struct type*,struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC25 (struct type*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC26 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC27 (struct type*,struct ui_file*,int,int) ; 
 int /*<<< orphan*/  FUNC28 (struct type*,struct ui_file*,int,int) ; 
 int /*<<< orphan*/  FUNC29 (struct type*,struct ui_file*) ; 

void
FUNC30 (struct type *type0, char *varstring, struct ui_file *stream,
		int show, int level)
{
  enum type_code code;
  int demangled_args;
  struct type *type = FUNC5 (FUNC6 (type0));
  char *type_name = FUNC19 (type);
  int is_var_decl = (varstring != NULL && varstring[0] != '\0');

  if (type == NULL)
    {
      if (is_var_decl)
	FUNC20 (stream, "%.*s: ",
			  FUNC16 (varstring), varstring);
      FUNC20 (stream, "<null type?>");
      return;
    }

  if (show > 0)
    FUNC0 (type);

  if (is_var_decl && FUNC1 (type) != TYPE_CODE_FUNC)
    FUNC20 (stream, "%.*s: ",
		      FUNC16 (varstring), varstring);

  if (type_name != NULL && show <= 0)
    {
      FUNC20 (stream, "%.*s",
			FUNC16 (type_name), type_name);
      return;
    }

  if (FUNC7 (type))
    FUNC30 (FUNC4 (type), "", stream, show, level);
  else if (FUNC12 (type))
    FUNC21 (type, stream, show, level);
  else
    switch (FUNC1 (type))
      {
      default:
	FUNC20 (stream, "<");
	FUNC18 (type, "", stream, show, level);
	FUNC20 (stream, ">");
	break;
      case TYPE_CODE_PTR:
	FUNC20 (stream, "access ");
	FUNC30 (FUNC3 (type), "", stream, show, level);
	break;
      case TYPE_CODE_REF:
	FUNC20 (stream, "<ref> ");
	FUNC30 (FUNC3 (type), "", stream, show, level);
	break;
      case TYPE_CODE_ARRAY:
	FUNC21 (type, stream, show, level);
	break;
      case TYPE_CODE_INT:
	if (FUNC10 (type))
	  FUNC23 (type, stream);
	else if (FUNC14 (type))
	  FUNC29 (type, stream);
	else
	  {
	    char *name = FUNC17 (type);
	    if (!FUNC13 (name))
	      FUNC20 (stream, "<%d-byte integer>",
				FUNC2 (type));
	    else
	      {
		FUNC20 (stream, "range ");
		FUNC26 (name, stream);
	      }
	  }
	break;
      case TYPE_CODE_RANGE:
	if (FUNC10 (type))
	  FUNC23 (type, stream);
	else if (FUNC14 (type))
	  FUNC29 (type, stream);
	else if (FUNC11 (type))
	  FUNC20 (stream, "mod %ld", (long) FUNC15 (type));
	else
	  {
	    FUNC20 (stream, "range ");
	    FUNC25 (type, stream);
	  }
	break;
      case TYPE_CODE_FLT:
	FUNC20 (stream, "<%d-byte float>", FUNC2 (type));
	break;
      case TYPE_CODE_ENUM:
	if (show < 0)
	  FUNC20 (stream, "(...)");
	else
	  FUNC22 (type, stream);
	break;
      case TYPE_CODE_STRUCT:
	if (FUNC8 (type))
	  FUNC21 (type, stream, show, level);
	else if (FUNC9 (type))
	  FUNC20 (stream,
			    "array (?) of ? (<mal-formed descriptor>)");
	else
	  FUNC27 (type, stream, show, level);
	break;
      case TYPE_CODE_UNION:
	FUNC28 (type, stream, show, level);
	break;
      case TYPE_CODE_FUNC:
	FUNC24 (type, stream, varstring);
	break;
      }
}