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
struct set {void* dest_addr_elt; void* src_elt; void* dest; void* src; } ;
typedef  void* rtx ;

/* Variables and functions */
 scalar_t__ COND_EXEC ; 
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int MAX_SETS ; 
 scalar_t__ FUNC4 (void*) ; 
 scalar_t__ PARALLEL ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ FUNC6 (void*) ; 
 scalar_t__ SET ; 
 void* FUNC7 (void*) ; 
 void* FUNC8 (void*) ; 
 scalar_t__ STRICT_LOW_PART ; 
 void* FUNC9 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (void*) ; 
 int /*<<< orphan*/  cselib_invalidate_rtx_note_stores ; 
 void* FUNC13 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ cselib_record_memory ; 
 int /*<<< orphan*/  FUNC14 (void*,void*,void*) ; 
 void* FUNC15 (int /*<<< orphan*/ ,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC16 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* pc_rtx ; 
 scalar_t__ FUNC17 (void*,void*) ; 

__attribute__((used)) static void
FUNC18 (rtx insn)
{
  int n_sets = 0;
  int i;
  struct set sets[MAX_SETS];
  rtx body = FUNC5 (insn);
  rtx cond = 0;

  body = FUNC5 (insn);
  if (FUNC2 (body) == COND_EXEC)
    {
      cond = FUNC1 (body);
      body = FUNC0 (body);
    }

  /* Find all sets.  */
  if (FUNC2 (body) == SET)
    {
      sets[0].src = FUNC8 (body);
      sets[0].dest = FUNC7 (body);
      n_sets = 1;
    }
  else if (FUNC2 (body) == PARALLEL)
    {
      /* Look through the PARALLEL and record the values being
	 set, if possible.  Also handle any CLOBBERs.  */
      for (i = FUNC11 (body, 0) - 1; i >= 0; --i)
	{
	  rtx x = FUNC10 (body, 0, i);

	  if (FUNC2 (x) == SET)
	    {
	      sets[n_sets].src = FUNC8 (x);
	      sets[n_sets].dest = FUNC7 (x);
	      n_sets++;
	    }
	}
    }

  /* Look up the values that are read.  Do this before invalidating the
     locations that are written.  */
  for (i = 0; i < n_sets; i++)
    {
      rtx dest = sets[i].dest;

      /* A STRICT_LOW_PART can be ignored; we'll record the equivalence for
         the low part after invalidating any knowledge about larger modes.  */
      if (FUNC2 (sets[i].dest) == STRICT_LOW_PART)
	sets[i].dest = dest = FUNC9 (dest, 0);

      /* We don't know how to record anything but REG or MEM.  */
      if (FUNC6 (dest)
	  || (FUNC4 (dest) && cselib_record_memory))
        {
	  rtx src = sets[i].src;
	  if (cond)
	    src = FUNC15 (FUNC3 (src), cond, src, dest);
	  sets[i].src_elt = FUNC13 (src, FUNC3 (dest), 1);
	  if (FUNC4 (dest))
	    sets[i].dest_addr_elt = FUNC13 (FUNC9 (dest, 0), Pmode, 1);
	  else
	    sets[i].dest_addr_elt = 0;
	}
    }

  /* Invalidate all locations written by this insn.  Note that the elts we
     looked up in the previous loop aren't affected, just some of their
     locations may go away.  */
  FUNC16 (body, cselib_invalidate_rtx_note_stores, NULL);

  /* If this is an asm, look for duplicate sets.  This can happen when the
     user uses the same value as an output multiple times.  This is valid
     if the outputs are not actually used thereafter.  Treat this case as
     if the value isn't actually set.  We do this by smashing the destination
     to pc_rtx, so that we won't record the value later.  */
  if (n_sets >= 2 && FUNC12 (body) >= 0)
    {
      for (i = 0; i < n_sets; i++)
	{
	  rtx dest = sets[i].dest;
	  if (FUNC6 (dest) || FUNC4 (dest))
	    {
	      int j;
	      for (j = i + 1; j < n_sets; j++)
		if (FUNC17 (dest, sets[j].dest))
		  {
		    sets[i].dest = pc_rtx;
		    sets[j].dest = pc_rtx;
		  }
	    }
	}
    }

  /* Now enter the equivalences in our tables.  */
  for (i = 0; i < n_sets; i++)
    {
      rtx dest = sets[i].dest;
      if (FUNC6 (dest)
	  || (FUNC4 (dest) && cselib_record_memory))
	FUNC14 (dest, sets[i].src_elt, sets[i].dest_addr_elt);
    }
}