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
struct web_entry {int dummy; } ;
struct df_ref {int flags; struct df_ref* next_ref; } ;
struct df_link {struct df_link* next; struct df_ref* ref; } ;
struct df {int dummy; } ;
typedef  int /*<<< orphan*/ * rtx ;

/* Variables and functions */
 struct df_ref* FUNC0 (struct df*,int /*<<< orphan*/ *) ; 
 struct df_ref* FUNC1 (struct df*,int /*<<< orphan*/ *) ; 
 struct df_link* FUNC2 (struct df_ref*) ; 
 int FUNC3 (struct df_ref*) ; 
 int /*<<< orphan*/ * FUNC4 (struct df_ref*) ; 
 int DF_REF_READ_WRITE ; 
 scalar_t__ FUNC5 (struct df_ref*) ; 
 scalar_t__ FUNC6 (struct df_ref*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct web_entry*,struct web_entry*) ; 
 int FUNC11 (struct web_entry*,struct web_entry*) ; 
 int FUNC12 (struct web_entry*,struct web_entry*) ; 
 int FUNC13 (struct web_entry*,struct web_entry*) ; 

void
FUNC14 (struct df *df, struct df_ref *use, struct web_entry *def_entry,
 	    struct web_entry *use_entry,
 	    bool (*fun) (struct web_entry *, struct web_entry *))
{
  rtx insn = FUNC4 (use);
  struct df_link *link = FUNC2 (use);
  struct df_ref *use_link;
  struct df_ref *def_link;
  rtx set;

  if (insn)
    {
      use_link = FUNC1 (df, insn);
      def_link = FUNC0 (df, insn);
      set = FUNC9 (insn);
    }
  else
    {
      use_link = NULL;
      def_link = NULL;
      set = NULL;
    }

  /* Some instructions may use match_dup for their operands.  In case the
     operands are dead, we will assign them different pseudos, creating
     invalid instructions, so union all uses of the same operand for each
     insn.  */

  while (use_link)
    {
      if (use != use_link
	  && FUNC5 (use) == FUNC5 (use_link))
 	(*fun) (use_entry + FUNC3 (use),
 		use_entry + FUNC3 (use_link));
      use_link = use_link->next_ref;
    }

  /* Recognize trivial noop moves and attempt to keep them as noop.
     While most of noop moves should be removed, we still keep some
     of them at libcall boundaries and such.  */

  if (set
      && FUNC8 (set) == FUNC6 (use)
      && FUNC8 (set) == FUNC7 (set))
    {
      while (def_link)
	{
	  if (FUNC5 (use) == FUNC5 (def_link))
 	    (*fun) (use_entry + FUNC3 (use),
 		    def_entry + FUNC3 (def_link));
	  def_link = def_link->next_ref;
	}
    }
  while (link)
    {
      (*fun) (use_entry + FUNC3 (use),
	      def_entry + FUNC3 (link->ref));
      link = link->next;
    }

  /* A READ_WRITE use requires the corresponding def to be in the same
     register.  Find it and union.  */
  if (use->flags & DF_REF_READ_WRITE)
    {
      struct df_ref *link;

      if (FUNC4 (use))
	link = FUNC0 (df, FUNC4 (use));
      else
	link = NULL;

      while (link)
	{
	  if (FUNC5 (link) == FUNC5 (use))
 	    (*fun) (use_entry + FUNC3 (use),
 		    def_entry + FUNC3 (link));
	  link = link->next_ref;
	}
    }
}