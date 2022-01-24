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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  def_entry ; 
 int /*<<< orphan*/  df ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  see_update_leader_extra_info ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  use_entry ; 
 unsigned int uses_num ; 

__attribute__((used)) static bool
FUNC7 (void)
{
  unsigned int i = 0;
  int num_relevant_uses;
  int num_relevant_defs;

  if (dump_file)
    FUNC1 (dump_file,
      "* Phase 1: Propagate extensions to uses.  *\n");

  /* Update the relevancy of references using the DF object.  */
  FUNC4 ();
  FUNC5 ();

  /* Produce the webs and update the extra_info of the root.
     In general, a web is relevant if all its definitions and uses are relevant
     and there is at least one definition that was marked as SIGN_EXTENDED_DEF
     or ZERO_EXTENDED_DEF.  */
  for (i = 0; i < uses_num; i++)
    FUNC6 (df, FUNC0 (df, i), def_entry, use_entry,
		see_update_leader_extra_info);

  /* Generate use extensions for references and insert these
     references to see_bb_splay_ar data structure.    */
  num_relevant_uses = FUNC3 ();

  if (num_relevant_uses < 0)
    return false;

  /* Store the def extensions in their references structures and insert these
     references to see_bb_splay_ar data structure.    */
  num_relevant_defs = FUNC2 ();

  if (num_relevant_defs < 0)
    return false;

 return num_relevant_uses > 0 || num_relevant_defs > 0;
}