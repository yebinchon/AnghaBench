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
typedef  int /*<<< orphan*/  tree ;
struct loop {int /*<<< orphan*/  nb_iterations; } ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  chrec_dont_know ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline tree
FUNC8 (struct loop *loop, 
			   tree res)
{
  tree type = FUNC5 (res);

  res = FUNC4 (type, res, FUNC3 (type, 1));

  /* FIXME HWI: However we want to store one iteration less than the
     count of the loop in order to be compatible with the other
     nb_iter computations in loop-iv.  This also allows the
     representation of nb_iters that are equal to MAX_INT.  */
  if (FUNC0 (res) == INTEGER_CST
      && (FUNC1 (res) == 0
	  || FUNC2 (res)))
    res = chrec_dont_know;
  
  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC6 (dump_file, "  (set_nb_iterations_in_loop = ");
      FUNC7 (dump_file, res, 0);
      FUNC6 (dump_file, "))\n");
    }
  
  loop->nb_iterations = res;
  return res;
}