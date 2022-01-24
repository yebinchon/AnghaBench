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
typedef  scalar_t__ CLASSTYPE_KEY_METHOD ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ processing_template_decl ; 

void
FUNC8 (tree type)
{
  tree method;

  if (FUNC6 (type)
      || processing_template_decl
      || FUNC1 (type)
      || FUNC0 (type))
    return;

  /* The key method is the first non-pure virtual function that is not
     inline at the point of class definition.  On some targets the
     key function may not be inline; those targets should not call
     this function until the end of the translation unit.  */
  for (method = FUNC7 (type); method != NULL_TREE;
       method = FUNC5 (method))
    if (FUNC4 (method) != NULL_TREE
	&& ! FUNC2 (method)
	&& ! FUNC3 (method))
      {
	CLASSTYPE_KEY_METHOD (type) = method;
	break;
      }

  return;
}