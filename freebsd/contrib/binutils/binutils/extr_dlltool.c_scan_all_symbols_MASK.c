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
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int HAS_SYMS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**,unsigned int*) ; 
 long FUNC6 (int /*<<< orphan*/ *,void*,long,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*,long,unsigned int) ; 

__attribute__((used)) static void
FUNC10 (bfd *abfd)
{
  long symcount;
  void *minisyms;
  unsigned int size;

  /* Ignore bfds with an import descriptor table.  We assume that any
     such BFD contains symbols which are exported from another DLL,
     and we don't want to reexport them from here.  */
  if (FUNC4 (abfd, ".idata$4"))
    return;

  if (! (FUNC2 (abfd) & HAS_SYMS))
    {
      /* xgettext:c-format */
      FUNC8 (FUNC0("%s: no symbols"), FUNC3 (abfd));
      return;
    }

  symcount = FUNC5 (abfd, FALSE, &minisyms, &size);
  if (symcount < 0)
    FUNC1 (FUNC3 (abfd));

  if (symcount == 0)
    {
      /* xgettext:c-format */
      FUNC8 (FUNC0("%s: no symbols"), FUNC3 (abfd));
      return;
    }

  /* Discard the symbols we don't want to export.  It's OK to do this
     in place; we'll free the storage anyway.  */

  symcount = FUNC6 (abfd, minisyms, symcount, size);
  FUNC9 (abfd, minisyms, symcount, size);

  FUNC7 (minisyms);
}