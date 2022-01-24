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
typedef  scalar_t__ tree ;

/* Variables and functions */
#define  ARRAY_TYPE 132 
#define  ENUMERAL_TYPE 131 
 int ERROR_MARK ; 
 int IDENTIFIER_NODE ; 
 int PARM_DECL ; 
#define  RECORD_TYPE 130 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (scalar_t__) ; 
#define  UNION_TYPE 129 
 int VAR_DECL ; 
#define  VOID_TYPE 128 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7 (tree value, tree type)
{
  const char *type_code_string;

  /* Avoid duplicate error message.  */
  if (FUNC0 (type) == ERROR_MARK)
    return;

  if (value != 0 && (FUNC0 (value) == VAR_DECL
		     || FUNC0 (value) == PARM_DECL))
    FUNC5 ("%qD has an incomplete type", value);
  else
    {
    retry:
      /* We must print an error message.  Be clever about what it says.  */

      switch (FUNC0 (type))
	{
	case RECORD_TYPE:
	  type_code_string = "struct";
	  break;

	case UNION_TYPE:
	  type_code_string = "union";
	  break;

	case ENUMERAL_TYPE:
	  type_code_string = "enum";
	  break;

	case VOID_TYPE:
	  FUNC5 ("invalid use of void expression");
	  return;

	case ARRAY_TYPE:
	  if (FUNC2 (type))
	    {
	      if (FUNC3 (FUNC2 (type)) == NULL)
		{
		  FUNC5 ("invalid use of flexible array member");
		  return;
		}
	      type = FUNC1 (type);
	      goto retry;
	    }
	  FUNC5 ("invalid use of array with unspecified bounds");
	  return;

	default:
	  FUNC6 ();
	}

      if (FUNC0 (FUNC4 (type)) == IDENTIFIER_NODE)
	FUNC5 ("invalid use of undefined type %<%s %E%>",
	       type_code_string, FUNC4 (type));
      else
	/* If this type has a typedef-name, the TYPE_NAME is a TYPE_DECL.  */
	FUNC5 ("invalid use of incomplete typedef %qD", FUNC4 (type));
    }
}