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
struct loop {int num; } ;
typedef  int /*<<< orphan*/  htab_t ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT_SUPERLOOP_CHRECS ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  del_scev_info ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  eq_scev_info ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  hash_scev_info ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC5 (struct loop *loop,
			tree chrec)
{
  tree res;
  htab_t cache = FUNC1 (10, hash_scev_info, eq_scev_info, del_scev_info);

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC0 (dump_file, "(instantiate_parameters \n");
      FUNC0 (dump_file, "  (loop_nb = %d)\n", loop->num);
      FUNC0 (dump_file, "  (chrec = ");
      FUNC4 (dump_file, chrec, 0);
      FUNC0 (dump_file, ")\n");
    }
 
  res = FUNC3 (loop, chrec, INSERT_SUPERLOOP_CHRECS, cache,
				  0);

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC0 (dump_file, "  (res = ");
      FUNC4 (dump_file, res, 0);
      FUNC0 (dump_file, "))\n");
    }

  FUNC2 (cache);
  
  return res;
}