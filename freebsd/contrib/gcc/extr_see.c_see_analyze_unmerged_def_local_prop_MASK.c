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
struct see_register_properties {int bitmap_index; int /*<<< orphan*/  regno; } ;
struct see_ref_s {void* insn; } ;
struct see_pre_extension_expr {int bitmap_index; int /*<<< orphan*/  regno; } ;
typedef  void* rtx ;
typedef  struct see_register_properties* htab_t ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  DEF_EXTENSION ; 
 int /*<<< orphan*/  INSERT ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * ae_kill ; 
 int /*<<< orphan*/  FUNC4 (struct see_register_properties*) ; 
 scalar_t__ FUNC5 (struct see_register_properties*,struct see_register_properties*,int /*<<< orphan*/ ) ; 
 struct see_register_properties** see_bb_hash_ar ; 
 void* FUNC6 (void*,int) ; 
 struct see_register_properties* FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * transp ; 

__attribute__((used)) static int
FUNC8 (void **slot, void *b)
{
  rtx def_se = *slot;
  struct see_ref_s *curr_ref_s = (struct see_ref_s *) b;
  rtx ref = curr_ref_s->insn;
  struct see_pre_extension_expr *extension_expr;
  int indx;
  int bb_num = FUNC0 (ref);
  htab_t curr_bb_hash;
  struct see_register_properties *curr_prop, **slot_prop;
  struct see_register_properties temp_prop;
  rtx dest_extension_reg = FUNC6 (def_se, 1);

  extension_expr = FUNC7 (def_se, DEF_EXTENSION);
  /* The extension_expr must be found.  */
  FUNC4 (extension_expr);

  curr_bb_hash = see_bb_hash_ar[bb_num];
  FUNC4 (curr_bb_hash);
  temp_prop.regno = FUNC1 (dest_extension_reg);
  slot_prop =
    (struct see_register_properties **) FUNC5 (curr_bb_hash,
							&temp_prop, INSERT);
  curr_prop = *slot_prop;
  FUNC4 (curr_prop);

  indx = extension_expr->bitmap_index;

  /* Reset the transparency bit.  */
  FUNC2 (transp[bb_num], indx);
  /* Set the killed bit.  */
  FUNC3 (ae_kill[bb_num], indx);

  return 1;
}