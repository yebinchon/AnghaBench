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
struct ptr_info_def {int dummy; } ;
struct loop {int /*<<< orphan*/  num; } ;
struct data_reference {int dummy; } ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  POINTER_REF_TYPE ; 
 scalar_t__ SSA_NAME ; 
 struct ptr_info_def* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct loop*,scalar_t__) ; 
 scalar_t__ chrec_dont_know ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct loop*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*) ; 
 struct data_reference* FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct ptr_info_def*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct loop* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssizetype ; 

__attribute__((used)) static struct data_reference *
FUNC14 (tree stmt, tree ref, bool is_read)
{
  struct loop *loop = FUNC11 (stmt);
  tree ptr_ref = FUNC3 (ref, 0);
  tree access_fn = FUNC4 (loop, ptr_ref);
  tree init = FUNC10 (access_fn, loop->num);
  tree base_address = NULL_TREE, evolution, step = NULL_TREE;
  struct ptr_info_def *ptr_info = NULL;

  if (FUNC2 (ptr_ref) == SSA_NAME)
    ptr_info = FUNC0 (ptr_ref);

  FUNC1 (init);
  if (access_fn == chrec_dont_know || !init || init == chrec_dont_know)
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
	{
	  FUNC8 (dump_file, "\nBad access function of ptr: ");
	  FUNC12 (dump_file, ref, TDF_SLIM);
	  FUNC8 (dump_file, "\n");
	}
      return NULL;
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC8 (dump_file, "\nAccess function of ptr: ");
      FUNC12 (dump_file, access_fn, TDF_SLIM);
      FUNC8 (dump_file, "\n");
    }

  if (!FUNC6 (loop, init))
    {
    if (dump_file && (dump_flags & TDF_DETAILS))
	FUNC8 (dump_file, "\ninitial condition is not loop invariant.\n");	
    }
  else
    {
      base_address = init;
      evolution = FUNC5 (access_fn, loop->num);
      if (evolution != chrec_dont_know)
	{       
	  if (!evolution)
	    step = FUNC13 (0);
	  else  
	    {
	      if (FUNC2 (evolution) == INTEGER_CST)
		step = FUNC7 (ssizetype, evolution);
	      else
		if (dump_file && (dump_flags & TDF_DETAILS))
		  FUNC8 (dump_file, "\nnon constant step for ptr access.\n");	
	    }
	}
      else
	if (dump_file && (dump_flags & TDF_DETAILS))
	  FUNC8 (dump_file, "\nunknown evolution of ptr.\n");	
    }
  return FUNC9 (stmt, ref, NULL_TREE, access_fn, is_read, base_address, 
			NULL_TREE, step, NULL_TREE, NULL_TREE, 
			ptr_info, POINTER_REF_TYPE);
}