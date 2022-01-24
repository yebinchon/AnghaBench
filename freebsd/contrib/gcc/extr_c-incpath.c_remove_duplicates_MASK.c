#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_dev; int /*<<< orphan*/  st_ino; int /*<<< orphan*/  st_mode; } ;
struct cpp_dir {scalar_t__ dev; scalar_t__ construct; struct cpp_dir* next; int /*<<< orphan*/  ino; int /*<<< orphan*/  name; scalar_t__ user_supplied_p; } ;
typedef  int /*<<< orphan*/  cpp_reader ;
struct TYPE_3__ {scalar_t__ warn_missing_include_dirs; } ;
typedef  TYPE_1__ cpp_options ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 int /*<<< orphan*/  CPP_DL_WARNING ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REASON_DUP ; 
 int REASON_DUP_SYS ; 
 int REASON_NOENT ; 
 int REASON_QUIET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (struct cpp_dir*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static struct cpp_dir *
FUNC8 (cpp_reader *pfile, struct cpp_dir *head,
		   struct cpp_dir *system, struct cpp_dir *join,
		   int verbose)
{
  struct cpp_dir **pcur, *tmp, *cur;
  struct stat st;

  for (pcur = &head; *pcur; )
    {
      int reason = REASON_QUIET;

      cur = *pcur;

      if (FUNC7 (cur->name, &st))
	{
	  /* Dirs that don't exist are silently ignored, unless verbose.  */
	  if (errno != ENOENT)
	    FUNC3 (pfile, CPP_DL_ERROR, cur->name);
	  else
	    {
	      /* If -Wmissing-include-dirs is given, warn.  */
	      cpp_options *opts = FUNC5 (pfile);
	      if (opts->warn_missing_include_dirs && cur->user_supplied_p)
		FUNC3 (pfile, CPP_DL_WARNING, cur->name);
	      reason = REASON_NOENT;
	    }
	}
      else if (!FUNC2 (st.st_mode))
	FUNC4 (pfile, CPP_DL_ERROR, 0, 0,
			     "%s: not a directory", cur->name);
      else
	{
	  FUNC0 (cur->ino, st.st_ino);
	  cur->dev  = st.st_dev;

	  /* Remove this one if it is in the system chain.  */
	  reason = REASON_DUP_SYS;
	  for (tmp = system; tmp; tmp = tmp->next)
	   if (FUNC1 (tmp->ino, cur->ino) && tmp->dev == cur->dev
	       && cur->construct == tmp->construct)
	      break;

	  if (!tmp)
	    {
	      /* Duplicate of something earlier in the same chain?  */
	      reason = REASON_DUP;
	      for (tmp = head; tmp != cur; tmp = tmp->next)
	       if (FUNC1 (cur->ino, tmp->ino) && cur->dev == tmp->dev
		   && cur->construct == tmp->construct)
		  break;

	      if (tmp == cur
		  /* Last in the chain and duplicate of JOIN?  */
		  && !(cur->next == NULL && join
		       && FUNC1 (cur->ino, join->ino)
		      && cur->dev == join->dev
		      && cur->construct == join->construct))
		{
		  /* Unique, so keep this directory.  */
		  pcur = &cur->next;
		  continue;
		}
	    }
	}

      /* Remove this entry from the chain.  */
      *pcur = cur->next;
      FUNC6 (cur, verbose ? reason: REASON_QUIET);
    }

  *pcur = join;
  return head;
}