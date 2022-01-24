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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ba_quiet ; 
 int ba_unique ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ cur_block ; 
 scalar_t__ current_class_ref ; 
 scalar_t__ current_class_type ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  this_identifier ; 

tree
FUNC9 (tree type, tree* binfop)
{
  tree decl, context;
  tree binfo;

  if (current_class_type
      && (binfo = FUNC6 (current_class_type, type,
			       ba_unique | ba_quiet, NULL)))
    context = current_class_type;
  else
    {
      /* Reference from a nested class member function.  */
      context = type;
      binfo = FUNC1 (type);
    }

  if (binfop)
    *binfop = binfo;

  if (current_class_ref && context == current_class_type
      /* Kludge: Make sure that current_class_type is actually
	 correct.  It might not be if we're in the middle of
	 tsubst_default_argument.  */
      && FUNC8 (FUNC2 (FUNC0 (current_class_ref)),
		      current_class_type))
    decl = current_class_ref;
  /* APPLE LOCAL begin radar 6154598 */
    else if (cur_block)
    {
      tree this_copiedin_var = FUNC7 (this_identifier);
      FUNC5 (!current_class_ref);
      FUNC5 (this_copiedin_var);
      decl = FUNC4 (this_copiedin_var);
    }  
  /* APPLE LOCAL end radar 6154598 */
  else
    decl = FUNC3 (context);

  return decl;
}