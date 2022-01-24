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
struct see_register_properties {int bitmap_index; scalar_t__ first_se_before_any_def; scalar_t__ last_def; scalar_t__ first_se_after_last_def; struct see_occr* avail_occr; struct see_occr* antic_occr; int /*<<< orphan*/  regno; } ;
struct see_ref_s {void* insn; } ;
struct see_pre_extension_expr {int bitmap_index; scalar_t__ first_se_before_any_def; scalar_t__ last_def; scalar_t__ first_se_after_last_def; struct see_occr* avail_occr; struct see_occr* antic_occr; int /*<<< orphan*/  regno; } ;
struct see_occr {int block_num; struct see_occr* next; void* insn; } ;
typedef  void* rtx ;
typedef  struct see_register_properties* htab_t ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  INSERT ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USE_EXTENSION ; 
 int /*<<< orphan*/ * ae_kill ; 
 int /*<<< orphan*/ * antloc ; 
 int /*<<< orphan*/ * comp ; 
 int /*<<< orphan*/  df ; 
 int /*<<< orphan*/  FUNC5 (struct see_register_properties*) ; 
 scalar_t__ FUNC6 (struct see_register_properties*,struct see_register_properties*,int /*<<< orphan*/ ) ; 
 struct see_register_properties** see_bb_hash_ar ; 
 void* FUNC7 (void*,int) ; 
 struct see_register_properties* FUNC8 (void*,int /*<<< orphan*/ ) ; 
 struct see_occr* FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10 (void **slot, void *b)
{
  struct see_ref_s *curr_ref_s = (struct see_ref_s *) b;
  rtx use_se = *slot;
  rtx ref = curr_ref_s->insn;
  rtx dest_extension_reg = FUNC7 (use_se, 1);
  struct see_pre_extension_expr *extension_expr;
  struct see_register_properties *curr_prop, **slot_prop;
  struct see_register_properties temp_prop;
  struct see_occr *curr_occr = NULL;
  struct see_occr *tmp_occr = NULL;
  htab_t curr_bb_hash;
  int indx;
  int bb_num = FUNC0 (ref);

  extension_expr = FUNC8 (use_se, USE_EXTENSION);
  /* The extension_expr must be found.  */
  FUNC5 (extension_expr);

  curr_bb_hash = see_bb_hash_ar[bb_num];
  FUNC5 (curr_bb_hash);
  temp_prop.regno = FUNC2 (dest_extension_reg);
  slot_prop =
    (struct see_register_properties **) FUNC6 (curr_bb_hash,
							&temp_prop, INSERT);
  curr_prop = *slot_prop;
  FUNC5 (curr_prop);

  indx = extension_expr->bitmap_index;

  if (curr_prop->first_se_before_any_def == FUNC1 (df, ref))
    {
      /* Set the anticipatable bit.  */
      FUNC4 (antloc[bb_num], indx);
      /* Record the anticipatable occurrence.  */
      curr_occr = FUNC9 (sizeof (struct see_occr));
      curr_occr->next = NULL;
      curr_occr->insn = use_se;
      curr_occr->block_num = bb_num;
      tmp_occr = extension_expr->antic_occr;
      if (!tmp_occr)
	extension_expr->antic_occr = curr_occr;
      else
	{
	  while (tmp_occr->next)
	    tmp_occr = tmp_occr->next;
	  tmp_occr->next = curr_occr;
	}
      if (curr_prop->last_def < 0)
	{
	  /* Set the available bit.  */
	  FUNC4 (comp[bb_num], indx);
	  /* Record the available occurrence.  */
	  curr_occr = FUNC9 (sizeof (struct see_occr));
	  curr_occr->next = NULL;
	  curr_occr->insn = use_se;
	  curr_occr->block_num = bb_num;
	  tmp_occr = extension_expr->avail_occr;
	  if (!tmp_occr)
	    extension_expr->avail_occr = curr_occr;
	  else
	    {
  	      while (tmp_occr->next)
  		tmp_occr = tmp_occr->next;
	      tmp_occr->next = curr_occr;
	    }
	}
      /* Note: there is no need to reset the killed bit since it must be zero at
	 this point.  */
    }
  else if (curr_prop->first_se_after_last_def == FUNC1 (df, ref))
    {
      /* Set the available bit.  */
      FUNC4 (comp[bb_num], indx);
      /* Reset the killed bit.  */
      FUNC3 (ae_kill[bb_num], indx);
      /* Record the available occurrence.  */
      curr_occr = FUNC9 (sizeof (struct see_occr));
      curr_occr->next = NULL;
      curr_occr->insn = use_se;
      curr_occr->block_num = bb_num;
      tmp_occr = extension_expr->avail_occr;
      if (!tmp_occr)
	extension_expr->avail_occr = curr_occr;
      else
	{
	  while (tmp_occr->next)
	    tmp_occr = tmp_occr->next;
	  tmp_occr->next = curr_occr;
	}
    }
  return 1;
}