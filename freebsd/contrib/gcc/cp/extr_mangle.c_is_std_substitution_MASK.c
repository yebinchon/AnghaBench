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
typedef  int /*<<< orphan*/ * tree ;
typedef  size_t substitution_identifier_index_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__* subst_identifiers ; 

__attribute__((used)) static inline int
FUNC10 (const tree node,
		     const substitution_identifier_index_t index)
{
  tree type = NULL;
  tree decl = NULL;

  if (FUNC4 (node))
    {
      type = FUNC5 (node);
      decl = node;
    }
  else if (FUNC0 (node))
    {
      type = node;
      decl = FUNC7 (node);
    }
  else
    /* These are not the droids you're looking for.  */
    return 0;

  return (FUNC3 (FUNC1 (decl))
	  && FUNC6 (type)
	  && FUNC8 (type)
	  && (FUNC2 (FUNC9 (type))
	      == subst_identifiers[index]));
}