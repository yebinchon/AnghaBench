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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  processing_template_decl ; 

__attribute__((used)) static int
FUNC4 (tree pat1, tree pat2)
{
  tree targs;
  tree tmpl1, tmpl2;
  int winner = 0;

  tmpl1 = FUNC1 (pat1);
  tmpl2 = FUNC1 (pat2);

  /* Just like what happens for functions, if we are ordering between
     different class template specializations, we may encounter dependent
     types in the arguments, and we need our dependency check functions
     to behave correctly.  */
  ++processing_template_decl;
  targs = FUNC3 (FUNC2 (pat1),
			      FUNC0 (tmpl1),
			      FUNC0 (tmpl2));
  if (targs)
    --winner;

  targs = FUNC3 (FUNC2 (pat2),
			      FUNC0 (tmpl2),
			      FUNC0 (tmpl1));
  if (targs)
    ++winner;
  --processing_template_decl;

  return winner;
}