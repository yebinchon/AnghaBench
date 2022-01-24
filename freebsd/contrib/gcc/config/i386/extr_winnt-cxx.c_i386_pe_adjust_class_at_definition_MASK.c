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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

void
FUNC10 (tree t)
{
  tree member;

  FUNC7 (FUNC1 (t));

 /* We only look at dllimport.  The only thing that dllexport does is
    add stuff to a '.drectiv' section at end-of-file, so no need to do
    anything for dllexport'd classes until we generate RTL. */  
  if (FUNC8 ("dllimport", FUNC4 (t)) == NULL_TREE)
    return;

  /* We don't actually add the attribute to the decl, just set the flag
     that signals that the address of this symbol is not a compile-time
     constant.   Any subsequent out-of-class declaration of members wil
     cause the DECL_DLLIMPORT_P flag to be unset.
     (See  tree.c: merge_dllimport_decl_attributes).
     That is just right since out-of class declarations can only be a
     definition.  We recheck the class members  at RTL generation to
     emit warnings if this has happened.  Definition of static data member
     of dllimport'd class always causes an error (as per MS compiler).
     */

  /* Check static VAR_DECL's.  */
  for (member = FUNC5 (t); member; member = FUNC2 (member))
    if (FUNC3 (member) == VAR_DECL)     
      FUNC9 (member);
    
  /* Check FUNCTION_DECL's.  */
  for (member = FUNC6 (t); member;  member = FUNC2 (member))
    if (FUNC3 (member) == FUNCTION_DECL)
      FUNC9 (member);
 
  /* Check vtables  */
  for (member = FUNC0 (t); member;  member = FUNC2 (member))
    if (FUNC3 (member) == VAR_DECL) 
      FUNC9 (member);

/* We leave typeinfo tables alone.  We can't mark TI objects as
     dllimport, since the address of a secondary VTT may be needed
     for static initialization of a primary VTT.  VTT's  of
     dllimport'd classes should always be link-once COMDAT.  */ 
}