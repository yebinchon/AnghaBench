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
struct et_occ {int depth; struct et_occ* next; struct et_occ* prev; struct et_occ* parent; int /*<<< orphan*/  min; int /*<<< orphan*/  min_occ; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct et_occ*) ; 
 int /*<<< orphan*/  FUNC1 (struct et_occ*) ; 
 int /*<<< orphan*/  FUNC2 (struct et_occ*) ; 
 int /*<<< orphan*/  FUNC3 (struct et_occ*) ; 
 int /*<<< orphan*/  FUNC4 (struct et_occ*) ; 
 int /*<<< orphan*/  FUNC5 (struct et_occ*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct et_occ*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct et_occ*,struct et_occ*) ; 
 int /*<<< orphan*/  FUNC8 (struct et_occ*,struct et_occ*) ; 

__attribute__((used)) static void
FUNC9 (struct et_occ *occ)
{
  struct et_occ *f, *gf, *ggf;
  int occ_depth, f_depth, gf_depth;

#ifdef DEBUG_ET
  record_path_before (occ);
  et_check_tree_sanity (occ);
#endif
 
  while (occ->parent)
    {
      occ_depth = occ->depth;

      f = occ->parent;
      f_depth = f->depth;

      gf = f->parent;

      if (!gf)
	{
	  FUNC6 (occ, f_depth);
	  occ->min_occ = f->min_occ;
	  occ->min = f->min;

	  if (f->prev == occ)
	    {
	      /* zig */
	      FUNC8 (f, occ->next);
	      FUNC7 (occ, f);
	      FUNC6 (f->prev, occ_depth);
	    }
	  else
	    {
	      /* zag */
	      FUNC7 (f, occ->prev);
	      FUNC8 (occ, f);
	      FUNC6 (f->next, occ_depth);
	    }
	  FUNC5 (f, -occ_depth);
	  occ->parent = NULL;

	  FUNC3 (f);
#ifdef DEBUG_ET
	  et_check_tree_sanity (occ);
	  check_path_after (occ);
#endif
	  return;
	}

      gf_depth = gf->depth;

      FUNC6 (occ, f_depth + gf_depth);
      occ->min_occ = gf->min_occ;
      occ->min = gf->min;

      ggf = gf->parent;

      if (gf->prev == f)
	{
	  if (f->prev == occ)
	    {
	      /* zig zig */
	      FUNC8 (gf, f->next);
	      FUNC8 (f, occ->next);
	      FUNC7 (occ, f);
	      FUNC7 (f, gf);

	      FUNC5 (f, -occ_depth);
	      FUNC6 (f->prev, occ_depth);
	      FUNC5 (gf, -f_depth);
	      FUNC6 (gf->prev, f_depth);
	    }
	  else
	    {
	      /* zag zig */
	      FUNC8 (gf, occ->next);
	      FUNC7 (f, occ->prev);
	      FUNC8 (occ, f);
	      FUNC7 (occ, gf);

	      FUNC5 (f, -occ_depth);
	      FUNC6 (f->next, occ_depth);
	      FUNC5 (gf, -occ_depth - f_depth);
	      FUNC6 (gf->prev, occ_depth + f_depth);
	    }
	}
      else
	{
	  if (f->prev == occ)
	    {
	      /* zig zag */
	      FUNC7 (gf, occ->prev);
	      FUNC8 (f, occ->next);
	      FUNC8 (occ, gf);
	      FUNC7 (occ, f);

	      FUNC5 (f, -occ_depth);
	      FUNC6 (f->prev, occ_depth);
	      FUNC5 (gf, -occ_depth - f_depth);
	      FUNC6 (gf->next, occ_depth + f_depth);
	    }
	  else
	    {
	      /* zag zag */
	      FUNC7 (gf, f->prev);
	      FUNC7 (f, occ->prev);
	      FUNC8 (occ, f);
	      FUNC8 (f, gf);

	      FUNC5 (f, -occ_depth);
	      FUNC6 (f->next, occ_depth);
	      FUNC5 (gf, -f_depth);
	      FUNC6 (gf->next, f_depth);
	    }
	}

      occ->parent = ggf;
      if (ggf)
	{
	  if (ggf->prev == gf)
	    ggf->prev = occ;
	  else
	    ggf->next = occ;
	}

      FUNC3 (gf);
      FUNC3 (f);
#ifdef DEBUG_ET
      et_check_tree_sanity (occ);
#endif
    }

#ifdef DEBUG_ET
  et_check_sanity (occ);
  check_path_after (occ);
#endif
}