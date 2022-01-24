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
typedef  scalar_t__ tree ;
struct TYPE_2__ {char* (* mangle_fundamental_type ) (scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
#define  BLOCK_POINTER_TYPE 147 
#define  BOOLEAN_TYPE 146 
#define  BOUND_TEMPLATE_TEMPLATE_PARM 145 
#define  COMPLEX_TYPE 144 
#define  ENUMERAL_TYPE 143 
#define  FUNCTION_TYPE 142 
#define  INTEGER_TYPE 141 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
#define  METHOD_TYPE 140 
#define  POINTER_TYPE 139 
#define  REAL_TYPE 138 
#define  RECORD_TYPE 137 
#define  REFERENCE_TYPE 136 
#define  TEMPLATE_PARM_INDEX 135 
#define  TEMPLATE_TEMPLATE_PARM 134 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
#define  TEMPLATE_TYPE_PARM 133 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
#define  TYPENAME_TYPE 132 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
#define  UNBOUND_CLASS_TEMPLATE 131 
#define  UNION_TYPE 130 
#define  VECTOR_TYPE 129 
#define  VOID_TYPE 128 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 char* FUNC12 (scalar_t__) ; 
 TYPE_1__ targetm ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (char const*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 

__attribute__((used)) static void
FUNC25 (tree type)
{
  /* This gets set to nonzero if TYPE turns out to be a (possibly
     CV-qualified) builtin type.  */
  int is_builtin_type = 0;

  FUNC0 ("type", type);

  if (type == error_mark_node)
    return;

  if (FUNC10 (type))
    return;

  if (FUNC13 (type) > 0)
    /* If TYPE was CV-qualified, we just wrote the qualifiers; now
       mangle the unqualified type.  The recursive call is needed here
       since both the qualified and unqualified types are substitution
       candidates.  */
    FUNC25 (FUNC5 (type));
  else if (FUNC3 (type) == ARRAY_TYPE)
    /* It is important not to use the TYPE_MAIN_VARIANT of TYPE here
       so that the cv-qualification of the element type is available
       in write_array_type.  */
    FUNC14 (type);
  else
    {
      /* See through any typedefs.  */
      type = FUNC5 (type);

      if (FUNC7 (type))
	FUNC20 (type);
      else switch (FUNC3 (type))
	{
	case VOID_TYPE:
	case BOOLEAN_TYPE:
	case INTEGER_TYPE:  /* Includes wchar_t.  */
	case REAL_TYPE:
	{
	  /* Handle any target-specific fundamental types.  */
	  const char *target_mangling
	    = targetm.mangle_fundamental_type (type);

	  if (target_mangling)
	    {
	      FUNC21 (target_mangling);
	      return;
	    }

	  /* If this is a typedef, TYPE may not be one of
	     the standard builtin type nodes, but an alias of one.  Use
	     TYPE_MAIN_VARIANT to get to the underlying builtin type.  */
	  FUNC15 (FUNC5 (type));
	  ++is_builtin_type;
	  break;
	}

	case COMPLEX_TYPE:
	  FUNC16 ('C');
	  FUNC25 (FUNC4 (type));
	  break;

	case FUNCTION_TYPE:
	case METHOD_TYPE:
	  FUNC18 (type);
	  break;

	case UNION_TYPE:
	case RECORD_TYPE:
	case ENUMERAL_TYPE:
	  /* A pointer-to-member function is represented as a special
	     RECORD_TYPE, so check for this first.  */
	  if (FUNC6 (type))
	    FUNC20 (type);
	  else
	    FUNC17 (type);
	  break;

	case TYPENAME_TYPE:
	case UNBOUND_CLASS_TEMPLATE:
	  /* We handle TYPENAME_TYPEs and UNBOUND_CLASS_TEMPLATEs like
	     ordinary nested names.  */
	  FUNC19 (FUNC8 (type));
	  break;

	case POINTER_TYPE:
	  FUNC16 ('P');
	  FUNC25 (FUNC4 (type));
	  break;

	   /* APPLE LOCAL begin blocks 6040305 */
	 case BLOCK_POINTER_TYPE:
	   FUNC21 ("U13block_pointer");
	   FUNC25 (FUNC4 (type));
	   break;
	    /* APPLE LOCAL end blocks 6040305 */

	case REFERENCE_TYPE:
	  FUNC16 ('R');
	  FUNC25 (FUNC4 (type));
	  break;

	case TEMPLATE_TYPE_PARM:
	case TEMPLATE_PARM_INDEX:
	  FUNC23 (type);
	  break;

	case TEMPLATE_TEMPLATE_PARM:
	  FUNC24 (type);
	  break;

	case BOUND_TEMPLATE_TEMPLATE_PARM:
	  FUNC24 (type);
	  FUNC22
	    (FUNC2 (FUNC1 (type)));
	  break;

	case VECTOR_TYPE:
	  FUNC21 ("U8__vector");
	  FUNC25 (FUNC4 (type));
	  break;

	default:
	  FUNC11 ();
	}
    }

  /* Types other than builtin types are substitution candidates.  */
  if (!is_builtin_type)
    FUNC9 (type);
}