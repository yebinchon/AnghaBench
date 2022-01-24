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
struct type {int dummy; } ;

/* Variables and functions */
 int BASE_CONVERSION_BADNESS ; 
 int BOOLEAN_CONVERSION_BADNESS ; 
 int FLOAT_CONVERSION_BADNESS ; 
 int FLOAT_PROMOTION_BADNESS ; 
 int INCOMPATIBLE_TYPE_BADNESS ; 
 int INTEGER_CONVERSION_BADNESS ; 
 int INTEGER_PROMOTION_BADNESS ; 
 int INT_FLOAT_CONVERSION_BADNESS ; 
 int NS_POINTER_CONVERSION_BADNESS ; 
 int POINTER_CONVERSION_BADNESS ; 
 int REFERENCE_CONVERSION_BADNESS ; 
 int FUNC0 (struct type*) ; 
#define  TYPE_CODE_ARRAY 144 
#define  TYPE_CODE_BOOL 143 
#define  TYPE_CODE_CHAR 142 
#define  TYPE_CODE_COMPLEX 141 
#define  TYPE_CODE_ENUM 140 
#define  TYPE_CODE_FLT 139 
#define  TYPE_CODE_FUNC 138 
#define  TYPE_CODE_INT 137 
#define  TYPE_CODE_MEMBER 136 
#define  TYPE_CODE_METHOD 135 
#define  TYPE_CODE_PTR 134 
#define  TYPE_CODE_RANGE 133 
#define  TYPE_CODE_REF 132 
#define  TYPE_CODE_SET 131 
#define  TYPE_CODE_STRUCT 130 
 int TYPE_CODE_TYPEDEF ; 
#define  TYPE_CODE_UNION 129 
#define  TYPE_CODE_VOID 128 
 struct type* FUNC1 (struct type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct type*) ; 
 char* FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (struct type*) ; 
 struct type* FUNC5 (struct type*) ; 
 int /*<<< orphan*/  FUNC6 (struct type*) ; 
 int VOID_PTR_CONVERSION_BADNESS ; 
 struct type* FUNC7 (struct type*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,int,char*,int) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct type*,struct type*) ; 
 scalar_t__ overload_debug ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

int
FUNC12 (struct type *parm, struct type *arg)
{
  /* Identical type pointers */
  /* However, this still doesn't catch all cases of same type for arg
   * and param. The reason is that builtin types are different from
   * the same ones constructed from the object. */
  if (parm == arg)
    return 0;

  /* Resolve typedefs */
  if (FUNC0 (parm) == TYPE_CODE_TYPEDEF)
    parm = FUNC7 (parm);
  if (FUNC0 (arg) == TYPE_CODE_TYPEDEF)
    arg = FUNC7 (arg);

  /*
     Well, damnit, if the names are exactly the same,
     i'll say they are exactly the same. This happens when we generate
     method stubs. The types won't point to the same address, but they
     really are the same.
  */

  if (FUNC3 (parm) && FUNC3 (arg) &&
      !FUNC11 (FUNC3 (parm), FUNC3 (arg)))
      return 0;

  /* Check if identical after resolving typedefs */
  if (parm == arg)
    return 0;

  /* See through references, since we can almost make non-references
     references. */
  if (FUNC0 (arg) == TYPE_CODE_REF)
    return (FUNC12 (parm, FUNC5 (arg))
	    + REFERENCE_CONVERSION_BADNESS);
  if (FUNC0 (parm) == TYPE_CODE_REF)
    return (FUNC12 (FUNC5 (parm), arg)
	    + REFERENCE_CONVERSION_BADNESS);
  if (overload_debug)
  /* Debugging only. */
    FUNC8 (gdb_stderr,"------ Arg is %s [%d], parm is %s [%d]\n",
        FUNC3 (arg), FUNC0 (arg), FUNC3 (parm), FUNC0 (parm));

  /* x -> y means arg of type x being supplied for parameter of type y */

  switch (FUNC0 (parm))
    {
    case TYPE_CODE_PTR:
      switch (FUNC0 (arg))
	{
	case TYPE_CODE_PTR:
	  if (FUNC0 (FUNC5 (parm)) == TYPE_CODE_VOID)
	    return VOID_PTR_CONVERSION_BADNESS;
	  else
	    return FUNC12 (FUNC5 (parm), FUNC5 (arg));
	case TYPE_CODE_ARRAY:
	  return FUNC12 (FUNC5 (parm), FUNC5 (arg));
	case TYPE_CODE_FUNC:
	  return FUNC12 (FUNC5 (parm), arg);
	case TYPE_CODE_INT:
	case TYPE_CODE_ENUM:
	case TYPE_CODE_CHAR:
	case TYPE_CODE_RANGE:
	case TYPE_CODE_BOOL:
	  return POINTER_CONVERSION_BADNESS;
	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}
    case TYPE_CODE_ARRAY:
      switch (FUNC0 (arg))
	{
	case TYPE_CODE_PTR:
	case TYPE_CODE_ARRAY:
	  return FUNC12 (FUNC5 (parm), FUNC5 (arg));
	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}
    case TYPE_CODE_FUNC:
      switch (FUNC0 (arg))
	{
	case TYPE_CODE_PTR:	/* funcptr -> func */
	  return FUNC12 (parm, FUNC5 (arg));
	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}
    case TYPE_CODE_INT:
      switch (FUNC0 (arg))
	{
	case TYPE_CODE_INT:
	  if (FUNC2 (arg) == FUNC2 (parm))
	    {
	      /* Deal with signed, unsigned, and plain chars and
	         signed and unsigned ints */
	      if (FUNC4 (parm))
		{
		  /* This case only for character types */
		  if (FUNC4 (arg))	/* plain char -> plain char */
		    return 0;
		  else
		    return INTEGER_CONVERSION_BADNESS;	/* signed/unsigned char -> plain char */
		}
	      else if (FUNC6 (parm))
		{
		  if (FUNC6 (arg))
		    {
		      /* unsigned int -> unsigned int, or unsigned long -> unsigned long */
		      if (FUNC9 (FUNC3 (parm), FUNC3 (arg)))
			return 0;
		      else if (FUNC9 (FUNC3 (arg), "int")
			       && FUNC9 (FUNC3 (parm), "long"))
			return INTEGER_PROMOTION_BADNESS;	/* unsigned int -> unsigned long */
		      else
			return INTEGER_CONVERSION_BADNESS;	/* unsigned long -> unsigned int */
		    }
		  else
		    {
		      if (FUNC9 (FUNC3 (arg), "long")
			  && FUNC9 (FUNC3 (parm), "int"))
			return INTEGER_CONVERSION_BADNESS;	/* signed long -> unsigned int */
		      else
			return INTEGER_CONVERSION_BADNESS;	/* signed int/long -> unsigned int/long */
		    }
		}
	      else if (!FUNC4 (arg) && !FUNC6 (arg))
		{
		  if (FUNC9 (FUNC3 (parm), FUNC3 (arg)))
		    return 0;
		  else if (FUNC9 (FUNC3 (arg), "int")
			   && FUNC9 (FUNC3 (parm), "long"))
		    return INTEGER_PROMOTION_BADNESS;
		  else
		    return INTEGER_CONVERSION_BADNESS;
		}
	      else
		return INTEGER_CONVERSION_BADNESS;
	    }
	  else if (FUNC2 (arg) < FUNC2 (parm))
	    return INTEGER_PROMOTION_BADNESS;
	  else
	    return INTEGER_CONVERSION_BADNESS;
	case TYPE_CODE_ENUM:
	case TYPE_CODE_CHAR:
	case TYPE_CODE_RANGE:
	case TYPE_CODE_BOOL:
	  return INTEGER_PROMOTION_BADNESS;
	case TYPE_CODE_FLT:
	  return INT_FLOAT_CONVERSION_BADNESS;
	case TYPE_CODE_PTR:
	  return NS_POINTER_CONVERSION_BADNESS;
	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}
      break;
    case TYPE_CODE_ENUM:
      switch (FUNC0 (arg))
	{
	case TYPE_CODE_INT:
	case TYPE_CODE_CHAR:
	case TYPE_CODE_RANGE:
	case TYPE_CODE_BOOL:
	case TYPE_CODE_ENUM:
	  return INTEGER_CONVERSION_BADNESS;
	case TYPE_CODE_FLT:
	  return INT_FLOAT_CONVERSION_BADNESS;
	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}
      break;
    case TYPE_CODE_CHAR:
      switch (FUNC0 (arg))
	{
	case TYPE_CODE_RANGE:
	case TYPE_CODE_BOOL:
	case TYPE_CODE_ENUM:
	  return INTEGER_CONVERSION_BADNESS;
	case TYPE_CODE_FLT:
	  return INT_FLOAT_CONVERSION_BADNESS;
	case TYPE_CODE_INT:
	  if (FUNC2 (arg) > FUNC2 (parm))
	    return INTEGER_CONVERSION_BADNESS;
	  else if (FUNC2 (arg) < FUNC2 (parm))
	    return INTEGER_PROMOTION_BADNESS;
	  /* >>> !! else fall through !! <<< */
	case TYPE_CODE_CHAR:
	  /* Deal with signed, unsigned, and plain chars for C++
	     and with int cases falling through from previous case */
	  if (FUNC4 (parm))
	    {
	      if (FUNC4 (arg))
		return 0;
	      else
		return INTEGER_CONVERSION_BADNESS;
	    }
	  else if (FUNC6 (parm))
	    {
	      if (FUNC6 (arg))
		return 0;
	      else
		return INTEGER_PROMOTION_BADNESS;
	    }
	  else if (!FUNC4 (arg) && !FUNC6 (arg))
	    return 0;
	  else
	    return INTEGER_CONVERSION_BADNESS;
	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}
      break;
    case TYPE_CODE_RANGE:
      switch (FUNC0 (arg))
	{
	case TYPE_CODE_INT:
	case TYPE_CODE_CHAR:
	case TYPE_CODE_RANGE:
	case TYPE_CODE_BOOL:
	case TYPE_CODE_ENUM:
	  return INTEGER_CONVERSION_BADNESS;
	case TYPE_CODE_FLT:
	  return INT_FLOAT_CONVERSION_BADNESS;
	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}
      break;
    case TYPE_CODE_BOOL:
      switch (FUNC0 (arg))
	{
	case TYPE_CODE_INT:
	case TYPE_CODE_CHAR:
	case TYPE_CODE_RANGE:
	case TYPE_CODE_ENUM:
	case TYPE_CODE_FLT:
	case TYPE_CODE_PTR:
	  return BOOLEAN_CONVERSION_BADNESS;
	case TYPE_CODE_BOOL:
	  return 0;
	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}
      break;
    case TYPE_CODE_FLT:
      switch (FUNC0 (arg))
	{
	case TYPE_CODE_FLT:
	  if (FUNC2 (arg) < FUNC2 (parm))
	    return FLOAT_PROMOTION_BADNESS;
	  else if (FUNC2 (arg) == FUNC2 (parm))
	    return 0;
	  else
	    return FLOAT_CONVERSION_BADNESS;
	case TYPE_CODE_INT:
	case TYPE_CODE_BOOL:
	case TYPE_CODE_ENUM:
	case TYPE_CODE_RANGE:
	case TYPE_CODE_CHAR:
	  return INT_FLOAT_CONVERSION_BADNESS;
	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}
      break;
    case TYPE_CODE_COMPLEX:
      switch (FUNC0 (arg))
	{			/* Strictly not needed for C++, but... */
	case TYPE_CODE_FLT:
	  return FLOAT_PROMOTION_BADNESS;
	case TYPE_CODE_COMPLEX:
	  return 0;
	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}
      break;
    case TYPE_CODE_STRUCT:
      /* currently same as TYPE_CODE_CLASS */
      switch (FUNC0 (arg))
	{
	case TYPE_CODE_STRUCT:
	  /* Check for derivation */
	  if (FUNC10 (parm, arg))
	    return BASE_CONVERSION_BADNESS;
	  /* else fall through */
	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}
      break;
    case TYPE_CODE_UNION:
      switch (FUNC0 (arg))
	{
	case TYPE_CODE_UNION:
	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}
      break;
    case TYPE_CODE_MEMBER:
      switch (FUNC0 (arg))
	{
	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}
      break;
    case TYPE_CODE_METHOD:
      switch (FUNC0 (arg))
	{

	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}
      break;
    case TYPE_CODE_REF:
      switch (FUNC0 (arg))
	{

	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}

      break;
    case TYPE_CODE_SET:
      switch (FUNC0 (arg))
	{
	  /* Not in C++ */
	case TYPE_CODE_SET:
	  return FUNC12 (FUNC1 (parm, 0), FUNC1 (arg, 0));
	default:
	  return INCOMPATIBLE_TYPE_BADNESS;
	}
      break;
    case TYPE_CODE_VOID:
    default:
      return INCOMPATIBLE_TYPE_BADNESS;
    }				/* switch (TYPE_CODE (arg)) */
}