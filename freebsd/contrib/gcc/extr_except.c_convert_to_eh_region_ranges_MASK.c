#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct eh_region {scalar_t__ landing_pad; struct eh_region* outer; } ;
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  htab_t ;
struct TYPE_4__ {int uses_eh_lsda; TYPE_1__* eh; } ;
struct TYPE_3__ {int /*<<< orphan*/  region_array; int /*<<< orphan*/  action_record_data; int /*<<< orphan*/ * region_tree; } ;
typedef  int NOTE_EH_HANDLER ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  NOTE_INSN_EH_REGION_BEG ; 
 int /*<<< orphan*/  NOTE_INSN_EH_REGION_END ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  REG_EH_REGION ; 
 scalar_t__ SEQUENCE ; 
 scalar_t__ USING_SJLJ_EXCEPTIONS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*) ; 
 struct eh_region* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  action_record_eq ; 
 int /*<<< orphan*/  action_record_hash ; 
 int FUNC11 (scalar_t__,int) ; 
 TYPE_2__* cfun ; 
 int FUNC12 (int /*<<< orphan*/ ,struct eh_region*) ; 
 int /*<<< orphan*/  eh_region ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ flag_non_call_exceptions ; 
 int /*<<< orphan*/  free ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

unsigned int
FUNC20 (void)
{
  rtx insn, iter, note;
  htab_t ar_hash;
  int last_action = -3;
  rtx last_action_insn = NULL_RTX;
  rtx last_landing_pad = NULL_RTX;
  rtx first_no_action_insn = NULL_RTX;
  int call_site = 0;

  if (USING_SJLJ_EXCEPTIONS || cfun->eh->region_tree == NULL)
    return 0;

  FUNC7 (cfun->eh->action_record_data, 64, "action_record_data");

  ar_hash = FUNC17 (31, action_record_hash, action_record_eq, free);

  for (iter = FUNC16 (); iter ; iter = FUNC4 (iter))
    if (FUNC2 (iter))
      {
	struct eh_region *region;
	int this_action;
	rtx this_landing_pad;

	insn = iter;
	if (FUNC5 (insn)
	    && FUNC1 (FUNC6 (insn)) == SEQUENCE)
	  insn = FUNC10 (FUNC6 (insn), 0, 0);

	note = FUNC15 (insn, REG_EH_REGION, NULL_RTX);
	if (!note)
	  {
	    if (! (FUNC0 (insn)
		   || (flag_non_call_exceptions
		       && FUNC19 (FUNC6 (insn)))))
	      continue;
	    this_action = -1;
	    region = NULL;
	  }
	else
	  {
	    if (FUNC3 (FUNC9 (note, 0)) <= 0)
	      continue;
	    region = FUNC8 (eh_region, cfun->eh->region_array, FUNC3 (FUNC9 (note, 0)));
	    this_action = FUNC12 (ar_hash, region);
	  }

	/* Existence of catch handlers, or must-not-throw regions
	   implies that an lsda is needed (even if empty).  */
	if (this_action != -1)
	  cfun->uses_eh_lsda = 1;

	/* Delay creation of region notes for no-action regions
	   until we're sure that an lsda will be required.  */
	else if (last_action == -3)
	  {
	    first_no_action_insn = iter;
	    last_action = -1;
	  }

	/* Cleanups and handlers may share action chains but not
	   landing pads.  Collect the landing pad for this region.  */
	if (this_action >= 0)
	  {
	    struct eh_region *o;
	    for (o = region; ! o->landing_pad ; o = o->outer)
	      continue;
	    this_landing_pad = o->landing_pad;
	  }
	else
	  this_landing_pad = NULL_RTX;

	/* Differing actions or landing pads implies a change in call-site
	   info, which implies some EH_REGION note should be emitted.  */
	if (last_action != this_action
	    || last_landing_pad != this_landing_pad)
	  {
	    /* If we'd not seen a previous action (-3) or the previous
	       action was must-not-throw (-2), then we do not need an
	       end note.  */
	    if (last_action >= -1)
	      {
		/* If we delayed the creation of the begin, do it now.  */
		if (first_no_action_insn)
		  {
		    call_site = FUNC11 (NULL_RTX, 0);
		    note = FUNC14 (NOTE_INSN_EH_REGION_BEG,
					     first_no_action_insn);
		    NOTE_EH_HANDLER (note) = call_site;
		    first_no_action_insn = NULL_RTX;
		  }

		note = FUNC13 (NOTE_INSN_EH_REGION_END,
					last_action_insn);
		NOTE_EH_HANDLER (note) = call_site;
	      }

	    /* If the new action is must-not-throw, then no region notes
	       are created.  */
	    if (this_action >= -1)
	      {
		call_site = FUNC11 (this_landing_pad,
					   this_action < 0 ? 0 : this_action);
		note = FUNC14 (NOTE_INSN_EH_REGION_BEG, iter);
		NOTE_EH_HANDLER (note) = call_site;
	      }

	    last_action = this_action;
	    last_landing_pad = this_landing_pad;
	  }
	last_action_insn = iter;
      }

  if (last_action >= -1 && ! first_no_action_insn)
    {
      note = FUNC13 (NOTE_INSN_EH_REGION_END, last_action_insn);
      NOTE_EH_HANDLER (note) = call_site;
    }

  FUNC18 (ar_hash);
  return 0;
}