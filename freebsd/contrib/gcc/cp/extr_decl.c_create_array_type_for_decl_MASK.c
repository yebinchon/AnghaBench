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
 int ARRAY_TYPE ; 
#define  FUNCTION_TYPE 131 
#define  METHOD_TYPE 130 
 scalar_t__ NULL_TREE ; 
#define  REFERENCE_TYPE 129 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
#define  VOID_TYPE 128 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ error_mark_node ; 

__attribute__((used)) static tree
FUNC6 (tree name, tree type, tree size)
{
  tree itype = NULL_TREE;
  const char* error_msg;

  /* If things have already gone awry, bail now.  */
  if (type == error_mark_node || size == error_mark_node)
    return error_mark_node;

  /* Assume that everything will go OK.  */
  error_msg = NULL;

  /* There are some types which cannot be array elements.  */
  switch (FUNC0 (type))
    {
    case VOID_TYPE:
      error_msg = "array of void";
      break;

    case FUNCTION_TYPE:
      error_msg = "array of functions";
      break;

    case REFERENCE_TYPE:
      error_msg = "array of references";
      break;

    case METHOD_TYPE:
      error_msg = "array of function members";
      break;

    default:
      break;
    }

  /* If something went wrong, issue an error-message and return.  */
  if (error_msg)
    {
      if (name)
	FUNC5 ("declaration of %qD as %s", name, error_msg);
      else
	FUNC5 ("creating %s", error_msg);

      return error_mark_node;
    }

  /* [dcl.array]

     The constant expressions that specify the bounds of the arrays
     can be omitted only for the first member of the sequence.  */
  if (FUNC0 (type) == ARRAY_TYPE && !FUNC1 (type))
    {
      if (name)
	FUNC5 ("declaration of %qD as multidimensional array must "
	       "have bounds for all dimensions except the first",
	       name);
      else
	FUNC5 ("multidimensional array must have bounds for all "
	       "dimensions except the first");

      return error_mark_node;
    }

  /* Figure out the index type for the array.  */
  if (size)
    itype = FUNC4 (name, size);

  /* [dcl.array]
     T is called the array element type; this type shall not be [...] an
     abstract class type.  */
  FUNC2 (name, type);

  return FUNC3 (type, itype);
}