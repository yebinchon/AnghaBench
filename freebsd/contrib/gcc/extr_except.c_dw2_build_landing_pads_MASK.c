#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct eh_region {int region_number; scalar_t__ type; int /*<<< orphan*/  post_landing_pad; int /*<<< orphan*/  landing_pad; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  TYPE_2__* edge ;
typedef  TYPE_3__* basic_block ;
struct TYPE_13__ {TYPE_1__* eh; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* eh_return_filter_mode ) () ;} ;
struct TYPE_11__ {int /*<<< orphan*/  count; int /*<<< orphan*/  next_bb; } ;
struct TYPE_10__ {int /*<<< orphan*/  probability; int /*<<< orphan*/  count; } ;
struct TYPE_9__ {int last_region_number; int /*<<< orphan*/  filter; int /*<<< orphan*/  exc_ptr; int /*<<< orphan*/  region_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDGE_FALLTHRU ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ERT_ALLOWED_EXCEPTIONS ; 
 scalar_t__ ERT_CLEANUP ; 
 scalar_t__ ERT_TRY ; 
 scalar_t__ HAVE_exception_receiver ; 
 scalar_t__ HAVE_nonlocal_goto_receiver ; 
 int /*<<< orphan*/  REG_BR_PROB_BASE ; 
 struct eh_region* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_8__* cfun ; 
 int /*<<< orphan*/  eh_region ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 TYPE_2__* FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptr_mode ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 TYPE_4__ targetm ; 

__attribute__((used)) static void
FUNC15 (void)
{
  int i;

  for (i = cfun->eh->last_region_number; i > 0; --i)
    {
      struct eh_region *region;
      rtx seq;
      basic_block bb;
      edge e;

      region = FUNC1 (eh_region, cfun->eh->region_array, i);
      /* Mind we don't process a region more than once.  */
      if (!region || region->region_number != i)
	continue;

      if (region->type != ERT_CLEANUP
	  && region->type != ERT_TRY
	  && region->type != ERT_ALLOWED_EXCEPTIONS)
	continue;

      FUNC13 ();

      region->landing_pad = FUNC8 ();
      FUNC3 (region->landing_pad);

#ifdef HAVE_exception_receiver
      if (HAVE_exception_receiver)
	emit_insn (gen_exception_receiver ());
      else
#endif
#ifdef HAVE_nonlocal_goto_receiver
	if (HAVE_nonlocal_goto_receiver)
	  emit_insn (gen_nonlocal_goto_receiver ());
	else
#endif
	  { /* Nothing */ }

      FUNC4 (cfun->eh->exc_ptr,
		      FUNC10 (ptr_mode, FUNC0 (0)));
      FUNC4 (cfun->eh->filter,
		      FUNC10 (targetm.eh_return_filter_mode (),
				   FUNC0 (1)));

      seq = FUNC11 ();
      FUNC6 ();

      bb = FUNC5 (seq, region->post_landing_pad);
      e = FUNC12 (bb, bb->next_bb, EDGE_FALLTHRU);
      e->count = bb->count;
      e->probability = REG_BR_PROB_BASE;
    }
}