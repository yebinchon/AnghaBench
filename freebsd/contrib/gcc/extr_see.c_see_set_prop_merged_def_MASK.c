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
struct see_register_properties {scalar_t__ regno; int last_def; int first_se_after_last_def; int first_se_before_any_def; } ;
struct see_ref_s {void* insn; } ;
typedef  void* rtx ;
typedef  scalar_t__ htab_t ;

/* Variables and functions */
 size_t FUNC0 (void*) ; 
 int /*<<< orphan*/  DEF_EXTENSION ; 
 int FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  INSERT ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  df ; 
 int /*<<< orphan*/  eq_descriptor_properties ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  hash_del_properties ; 
 int /*<<< orphan*/  hash_descriptor_properties ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,struct see_register_properties*,int /*<<< orphan*/ ) ; 
 scalar_t__* see_bb_hash_ar ; 
 void* FUNC6 (void*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 struct see_register_properties* FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9 (void **slot, void *b)
{
  rtx def_se = *slot;
  struct see_ref_s *curr_ref_s = (struct see_ref_s *) b;
  rtx insn = curr_ref_s->insn;
  rtx dest_extension_reg = FUNC6 (def_se, 1);
  htab_t curr_bb_hash;
  struct see_register_properties *curr_prop = NULL;
  struct see_register_properties **slot_prop;
  struct see_register_properties temp_prop;
  int ref_luid = FUNC1 (df, insn);

  curr_bb_hash = see_bb_hash_ar[FUNC0 (curr_ref_s->insn)];
  if (!curr_bb_hash)
    {
      /* The hash doesn't exist yet.  Create it.  */
      curr_bb_hash = FUNC4 (10, 
				  hash_descriptor_properties, 
				  eq_descriptor_properties,
				  hash_del_properties);
      see_bb_hash_ar[FUNC0 (curr_ref_s->insn)] = curr_bb_hash;
    }

  /* Find the right register properties in the right basic block.  */
  temp_prop.regno = FUNC2 (dest_extension_reg);
  slot_prop =
    (struct see_register_properties **) FUNC5 (curr_bb_hash,
							&temp_prop, INSERT);

  if (slot_prop && *slot_prop != NULL)
    {
      /* Property already exists.  */
      curr_prop = *slot_prop;
      FUNC3 (curr_prop->regno == FUNC2 (dest_extension_reg));

      curr_prop->last_def = ref_luid;
      curr_prop->first_se_after_last_def = ref_luid;
    }
  else
    {
      /* Property doesn't exist yet.  */
      curr_prop = FUNC8 (sizeof (struct see_register_properties));
      curr_prop->regno = FUNC2 (dest_extension_reg);
      curr_prop->last_def = ref_luid;
      curr_prop->first_se_before_any_def = -1;
      curr_prop->first_se_after_last_def = ref_luid;
      *slot_prop = curr_prop;
    }

  /* Insert the def_se into see_pre_extension_hash if it isn't already
     there.  */
  FUNC7 (def_se, DEF_EXTENSION);

  return 1;
}