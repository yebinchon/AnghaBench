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
struct tree_niter_desc {scalar_t__ niter; int /*<<< orphan*/  may_be_zero; } ;
struct loop {int /*<<< orphan*/  single_exit; scalar_t__ nb_iterations; } ;
typedef  int /*<<< orphan*/  edge ;

/* Variables and functions */
 int TDF_DETAILS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ chrec_dont_know ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct loop*,int /*<<< orphan*/ ,struct tree_niter_desc*,int) ; 
 scalar_t__ FUNC6 (struct loop*,scalar_t__) ; 

tree 
FUNC7 (struct loop *loop)
{
  tree res, type;
  edge exit;
  struct tree_niter_desc niter_desc;

  /* Determine whether the number_of_iterations_in_loop has already
     been computed.  */
  res = loop->nb_iterations;
  if (res)
    return res;
  res = chrec_dont_know;

  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC2 (dump_file, "(number_of_iterations_in_loop\n");
  
  exit = loop->single_exit;
  if (!exit)
    goto end;

  if (!FUNC5 (loop, exit, &niter_desc, false))
    goto end;

  type = FUNC0 (niter_desc.niter);
  if (FUNC3 (niter_desc.may_be_zero))
    res = FUNC1 (type, 0);
  else if (FUNC4 (niter_desc.may_be_zero))
    res = niter_desc.niter;
  else
    res = chrec_dont_know;

end:
  return FUNC6 (loop, res);
}