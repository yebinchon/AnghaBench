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
struct see_ref_s {int /*<<< orphan*/  insn; } ;
typedef  void* rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,void*) ; 

__attribute__((used)) static int
FUNC4 (void **slot, void *b)
{
  rtx use_se = *slot;
  struct see_ref_s *curr_ref_s = (struct see_ref_s *) b;

  if (FUNC0 (use_se))
    /* This use extension was previously removed according to the lcm
       output.  */
    return 1;

  if (dump_file)
    {
      FUNC2 (dump_file, "Inserting use extension:\n");
      FUNC3 (dump_file, use_se);
    }

  FUNC1 (use_se, curr_ref_s->insn);

  return 1;
}