#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {struct TYPE_21__* sy_next; struct TYPE_21__* sy_previous; TYPE_2__* bsym; } ;
typedef  TYPE_1__ symbolS ;
struct local_symbol {int dummy; } ;
struct TYPE_22__ {int /*<<< orphan*/  section; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ asymbol ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC8 (struct local_symbol*) ; 
 int /*<<< orphan*/  notes ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* symbol_lastP ; 
 TYPE_1__* symbol_rootP ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_1__*) ; 

symbolS *
FUNC13 (symbolS *orgsymP, int replace)
{
  symbolS *newsymP;
  asymbol *bsymorg, *bsymnew;

  /* Running local_symbol_convert on a clone that's not the one currently
     in local_hash would incorrectly replace the hash entry.  Thus the
     symbol must be converted here.  Note that the rest of the function
     depends on not encountering an unconverted symbol.  */
  if (FUNC0 (orgsymP))
    orgsymP = FUNC8 ((struct local_symbol *) orgsymP);
  bsymorg = orgsymP->bsym;

  newsymP = FUNC10 (&notes, sizeof (*newsymP));
  *newsymP = *orgsymP;
  bsymnew = FUNC6 (FUNC2 (bsymorg));
  if (bsymnew == NULL)
    FUNC1 ("bfd_make_empty_symbol: %s", FUNC4 (FUNC5 ()));
  newsymP->bsym = bsymnew;
  bsymnew->name = bsymorg->name;
  bsymnew->flags =  bsymorg->flags;
  bsymnew->section =  bsymorg->section;
  FUNC3 (FUNC2 (bsymorg), bsymorg,
				FUNC2 (bsymnew), bsymnew);

#ifdef obj_symbol_clone_hook
  obj_symbol_clone_hook (newsymP, orgsymP);
#endif

#ifdef tc_symbol_clone_hook
  tc_symbol_clone_hook (newsymP, orgsymP);
#endif

  if (replace)
    {
      if (symbol_rootP == orgsymP)
	symbol_rootP = newsymP;
      else if (orgsymP->sy_previous)
	{
	  orgsymP->sy_previous->sy_next = newsymP;
	  orgsymP->sy_previous = NULL;
	}
      if (symbol_lastP == orgsymP)
	symbol_lastP = newsymP;
      else if (orgsymP->sy_next)
	orgsymP->sy_next->sy_previous = newsymP;
      orgsymP->sy_previous = orgsymP->sy_next = orgsymP;
      FUNC7 (symbol_rootP, symbol_lastP);

      FUNC11 (newsymP);
    }
  else
    newsymP->sy_previous = newsymP->sy_next = newsymP;

  return newsymP;
}