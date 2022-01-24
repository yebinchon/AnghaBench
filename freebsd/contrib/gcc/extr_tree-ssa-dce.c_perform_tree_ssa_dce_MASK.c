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
struct edge_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  CDI_POST_DOMINATORS ; 
 int /*<<< orphan*/  TV_CONTROL_DEPENDENCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ cfg_altered ; 
 struct edge_list* FUNC1 () ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct edge_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct edge_list*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct edge_list*) ; 
 int /*<<< orphan*/  last_basic_block ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct edge_list*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  visited_control_parents ; 

__attribute__((used)) static void
FUNC17 (bool aggressive)
{
  struct edge_list *el = NULL;

  FUNC16 (aggressive);

  if (aggressive)
    {
      /* Compute control dependence.  */
      FUNC14 (TV_CONTROL_DEPENDENCES);
      FUNC0 (CDI_POST_DOMINATORS);
      el = FUNC1 ();
      FUNC3 (el);
      FUNC13 (TV_CONTROL_DEPENDENCES);

      visited_control_parents = FUNC11 (last_basic_block);
      FUNC12 (visited_control_parents);

      FUNC7 ();
    }

  FUNC4 (el);

  FUNC10 (el);

  FUNC8 ();
  FUNC2 ();

  if (aggressive)
    FUNC5 (CDI_POST_DOMINATORS);

  /* If we removed paths in the CFG, then we need to update
     dominators as well.  I haven't investigated the possibility
     of incrementally updating dominators.  */
  if (cfg_altered)
    FUNC5 (CDI_DOMINATORS);

  /* Debugging dumps.  */
  if (dump_file)
    FUNC9 ();

  FUNC15 (aggressive);

  FUNC6 (el);
}