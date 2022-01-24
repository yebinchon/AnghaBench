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
typedef  int /*<<< orphan*/  tree ;
typedef  int DECL_COMDAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_WEAK_NOT_IN_ARCHIVE_TOC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  flag_weak ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5 (tree decl)
{
  /* We used to say that this was not necessary on targets that support weak
     symbols, because the implicit instantiations will defer to the explicit
     one.  However, that's not actually the case in SVR4; a strong definition
     after a weak one is an error.  Also, not making explicit
     instantiations one_only means that we can end up with two copies of
     some template instantiations.  */
  if (! flag_weak)
    return;

  /* We can't set DECL_COMDAT on functions, or cp_finish_file will think
     we can get away with not emitting them if they aren't used.  We need
     to for variables so that cp_finish_decl will update their linkage,
     because their DECL_INITIAL may not have been set properly yet.  */

  if (!TARGET_WEAK_NOT_IN_ARCHIVE_TOC
      || (! FUNC0 (decl)
	  && ! FUNC1 (decl)))
    {
      FUNC3 (decl);

      if (FUNC2 (decl) == VAR_DECL)
	{
	  DECL_COMDAT (decl) = 1;
	  /* Mark it needed so we don't forget to emit it.  */
	  FUNC4 (decl);
	}
    }
}