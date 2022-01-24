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
struct see_ref_s {int /*<<< orphan*/ * merged_def_se_hash; int /*<<< orphan*/ * unmerged_def_se_hash; int /*<<< orphan*/ * use_se_hash; int /*<<< orphan*/ * merged_insn; int /*<<< orphan*/ * insn; int /*<<< orphan*/  luid; } ;
typedef  int /*<<< orphan*/  splay_tree_value ;
typedef  TYPE_1__* splay_tree_node ;
typedef  int /*<<< orphan*/ * rtx ;
typedef  void* htab_t ;
typedef  enum extension_type { ____Placeholder_extension_type } extension_type ;
struct TYPE_3__ {scalar_t__ value; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  EXPLICIT_DEF_EXTENSION 130 
#define  IMPLICIT_DEF_EXTENSION 129 
 int /*<<< orphan*/  INSERT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
#define  USE_EXTENSION 128 
 int /*<<< orphan*/  df ; 
 int /*<<< orphan*/  eq_descriptor_extension ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  hash_descriptor_extension ; 
 void* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int last_bb ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* see_bb_splay_ar ; 
 int /*<<< orphan*/  see_free_ref_s ; 
 int /*<<< orphan*/  splay_tree_compare_ints ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct see_ref_s* FUNC11 (int) ; 

__attribute__((used)) static bool
FUNC12 (rtx ref_insn, rtx se_insn,
				   enum extension_type type)
{
  rtx *rtx_slot;
  int curr_bb_num;
  splay_tree_node stn = NULL;
  htab_t se_hash = NULL;
  struct see_ref_s *ref_s = NULL;

  /* Check the arguments.  */
  FUNC3 (ref_insn && se_insn);
  if (!see_bb_splay_ar)
    return false;

  curr_bb_num = FUNC0 (ref_insn);
  FUNC3 (curr_bb_num < last_bb && curr_bb_num >= 0);

  /* Insert the reference to the splay tree of its basic block.  */
  if (!see_bb_splay_ar[curr_bb_num])
    /* The splay tree for this block doesn't exist yet, create it.  */
    see_bb_splay_ar[curr_bb_num] = FUNC10 (splay_tree_compare_ints,
						    NULL, see_free_ref_s);
  else
    /* Splay tree already exists, check if the current reference is already
       in it.  */
    {
      stn = FUNC9 (see_bb_splay_ar[curr_bb_num],
			       FUNC1 (df, ref_insn));
      if (stn)
	switch (type)
	  {
	  case EXPLICIT_DEF_EXTENSION:
	    se_hash =
	      ((struct see_ref_s *) (stn->value))->unmerged_def_se_hash;
	    if (!se_hash)
	      {
		se_hash = FUNC5 (10, 
				       hash_descriptor_extension,
				       eq_descriptor_extension, 
				       NULL);
		((struct see_ref_s *) (stn->value))->unmerged_def_se_hash =
		  se_hash;
	      }
	    break;
	  case IMPLICIT_DEF_EXTENSION:
	    se_hash = ((struct see_ref_s *) (stn->value))->merged_def_se_hash;
	    if (!se_hash)
	      {
		se_hash = FUNC5 (10, 
				       hash_descriptor_extension,
				       eq_descriptor_extension, 
				       NULL);
		((struct see_ref_s *) (stn->value))->merged_def_se_hash =
		  se_hash;
	      }
	    break;
	  case USE_EXTENSION:
	    se_hash = ((struct see_ref_s *) (stn->value))->use_se_hash;
	    if (!se_hash)
	      {
		se_hash = FUNC5 (10, 
				       hash_descriptor_extension,
				       eq_descriptor_extension, 
				       NULL);
		((struct see_ref_s *) (stn->value))->use_se_hash = se_hash;
	      }
	    break;
	  default:
	    FUNC4 ();
	  }
    }

  /* Initialize a new see_ref_s structure and insert it to the splay
     tree.  */
  if (!stn)
    {
      ref_s = FUNC11 (sizeof (struct see_ref_s));
      ref_s->luid = FUNC1 (df, ref_insn);
      ref_s->insn = ref_insn;
      ref_s->merged_insn = NULL;

      /* Initialize the hashes.  */
      switch (type)
	{
	case EXPLICIT_DEF_EXTENSION:
	  ref_s->unmerged_def_se_hash = FUNC5 (10, 
						     hash_descriptor_extension, 
						     eq_descriptor_extension,
						     NULL);
	  se_hash = ref_s->unmerged_def_se_hash;
	  ref_s->merged_def_se_hash = NULL;
	  ref_s->use_se_hash = NULL;
	  break;
	case IMPLICIT_DEF_EXTENSION:
	  ref_s->merged_def_se_hash = FUNC5 (10, 
						   hash_descriptor_extension, 
						   eq_descriptor_extension,
						   NULL);
	  se_hash = ref_s->merged_def_se_hash;
	  ref_s->unmerged_def_se_hash = NULL;
	  ref_s->use_se_hash = NULL;
	  break;
	case USE_EXTENSION:
	  ref_s->use_se_hash = FUNC5 (10, 
					    hash_descriptor_extension, 
					    eq_descriptor_extension,
					    NULL);
	  se_hash = ref_s->use_se_hash;
	  ref_s->unmerged_def_se_hash = NULL;
	  ref_s->merged_def_se_hash = NULL;
	  break;
	default:
	  FUNC4 ();
	}
    }

  /* Insert the new extension instruction into the correct se_hash of the
     current reference.  */
  rtx_slot = (rtx *) FUNC6 (se_hash, se_insn, INSERT);
  if (*rtx_slot != NULL)
    {
      FUNC3 (type == USE_EXTENSION);
      FUNC3 (FUNC7 (FUNC2 (*rtx_slot), FUNC2 (se_insn)));
    }
  else
    *rtx_slot = se_insn;

  /* If this is a new reference, insert it into the splay_tree.  */
  if (!stn)
    FUNC8 (see_bb_splay_ar[curr_bb_num],
		       FUNC1 (df, ref_insn), (splay_tree_value) ref_s);
  return true;
}