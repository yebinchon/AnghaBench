#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct data_reference {int dummy; } ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum dr_alignment_support { ____Placeholder_dr_alignment_support } dr_alignment_support ;
struct TYPE_12__ {TYPE_3__* handlers; } ;
struct TYPE_8__ {scalar_t__ (* builtin_mask_for_load ) () ;} ;
struct TYPE_11__ {TYPE_2__ vectorize; } ;
struct TYPE_10__ {TYPE_1__* handlers; } ;
struct TYPE_9__ {scalar_t__ insn_code; } ;
struct TYPE_7__ {scalar_t__ insn_code; } ;

/* Variables and functions */
 scalar_t__ CODE_FOR_nothing ; 
 scalar_t__ FUNC0 (struct data_reference*) ; 
 int /*<<< orphan*/  FUNC1 (struct data_reference*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct data_reference*) ; 
 int dr_aligned ; 
 int dr_unaligned_software_pipeline ; 
 int dr_unaligned_supported ; 
 int dr_unaligned_unsupported ; 
 TYPE_6__* movmisalign_optab ; 
 scalar_t__ FUNC5 () ; 
 TYPE_5__ targetm ; 
 TYPE_4__* vec_realign_load_optab ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

enum dr_alignment_support
FUNC7 (struct data_reference *dr)
{
  tree vectype = FUNC2 (FUNC6 (FUNC1 (dr)));
  enum machine_mode mode = (int) FUNC3 (vectype);

  if (FUNC4 (dr))
    return dr_aligned;

  /* Possibly unaligned access.  */
  
  if (FUNC0 (dr))
    {
      if (vec_realign_load_optab->handlers[mode].insn_code != CODE_FOR_nothing
	  && (!targetm.vectorize.builtin_mask_for_load
	      || targetm.vectorize.builtin_mask_for_load ()))
	return dr_unaligned_software_pipeline;

      if (movmisalign_optab->handlers[mode].insn_code != CODE_FOR_nothing)
	/* Can't software pipeline the loads, but can at least do them.  */
	return dr_unaligned_supported;
    }

  /* Unsupported.  */
  return dr_unaligned_unsupported;
}