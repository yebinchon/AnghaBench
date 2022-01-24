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
struct symtabs_and_lines {int nelts; char* sals; } ;
struct symtab {int dummy; } ;
struct cleanup {int dummy; } ;
struct breakpoint {char* cond_string; int thread; char* addr_string; char* dll_pathname; int /*<<< orphan*/  disposition; int /*<<< orphan*/  enable_state; int /*<<< orphan*/ * cond; scalar_t__ number; } ;
typedef  enum bptype { ____Placeholder_bptype } bptype ;

/* Variables and functions */
 int /*<<< orphan*/  bp_enabled ; 
 scalar_t__ breakpoint_count ; 
 struct symtabs_and_lines FUNC0 (char**,int,struct symtab*,int /*<<< orphan*/ ,char***,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  disp_del ; 
 int /*<<< orphan*/  disp_donttouch ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 struct cleanup* FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct breakpoint*) ; 
 int /*<<< orphan*/  null_cleanup ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct breakpoint* FUNC8 (char,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  xfree ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13 (char *hookname, int tempflag, char *dll_pathname,
		     char *cond_string, enum bptype bp_kind)
{
  struct breakpoint *b;
  struct symtabs_and_lines sals;
  struct cleanup *old_chain;
  struct cleanup *canonical_strings_chain = NULL;
  char *addr_start = hookname;
  char *addr_end = NULL;
  char **canonical = (char **) NULL;
  int thread = -1;		/* All threads. */

  /* Set a breakpoint on the specified hook. */
  sals = FUNC0 (&hookname, 1, (struct symtab *) NULL, 0, &canonical, NULL);
  addr_end = hookname;

  if (sals.nelts == 0)
    {
      FUNC11 ("Unable to set a breakpoint on dynamic linker callback.");
      FUNC11 ("Suggest linking with /opt/langtools/lib/end.o.");
      FUNC11 ("GDB will be unable to track shl_load/shl_unload calls");
      return;
    }
  if (sals.nelts != 1)
    {
      FUNC11 ("Unable to set unique breakpoint on dynamic linker callback.");
      FUNC11 ("GDB will be unable to track shl_load/shl_unload calls");
      return;
    }

  /* Make sure that all storage allocated in decode_line_1 gets freed
     in case the following errors out.  */
  old_chain = FUNC3 (xfree, sals.sals);
  if (canonical != (char **) NULL)
    {
      FUNC3 (xfree, canonical);
      canonical_strings_chain = FUNC3 (null_cleanup, 0);
      if (canonical[0] != NULL)
	FUNC3 (xfree, canonical[0]);
    }

  FUNC5 (&sals.sals[0]);

  /* Remove the canonical strings from the cleanup, they are needed below.  */
  if (canonical != (char **) NULL)
    FUNC1 (canonical_strings_chain);

  b = FUNC8 (sals.sals[0], bp_kind);
  FUNC7 (breakpoint_count + 1);
  b->number = breakpoint_count;
  b->cond = NULL;
  b->cond_string = (cond_string == NULL) ? 
    NULL : FUNC6 (cond_string, FUNC10 (cond_string));
  b->thread = thread;

  if (canonical != (char **) NULL && canonical[0] != NULL)
    b->addr_string = canonical[0];
  else if (addr_start)
    b->addr_string = FUNC6 (addr_start, addr_end - addr_start);

  b->enable_state = bp_enabled;
  b->disposition = tempflag ? disp_del : disp_donttouch;

  if (dll_pathname == NULL)
    b->dll_pathname = NULL;
  else
    {
      b->dll_pathname = (char *) FUNC12 (FUNC10 (dll_pathname) + 1);
      FUNC9 (b->dll_pathname, dll_pathname);
    }

  FUNC4 (b);
  FUNC2 (old_chain);
}