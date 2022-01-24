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
struct see_pre_extension_expr {int /*<<< orphan*/ * avail_occr; int /*<<< orphan*/ * antic_occr; scalar_t__ bitmap_index; void* se_insn; } ;
typedef  void* rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum extension_type { ____Placeholder_extension_type } extension_type ;

/* Variables and functions */
 int DEF_EXTENSION ; 
 int /*<<< orphan*/  INSERT ; 
 int UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct see_pre_extension_expr*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*,int,int) ; 
 int FUNC4 (void*,int*) ; 
 void* FUNC5 (void*,int) ; 
 int /*<<< orphan*/  see_pre_extension_hash ; 
 struct see_pre_extension_expr* FUNC6 (int) ; 

__attribute__((used)) static struct see_pre_extension_expr *
FUNC7 (rtx extension, enum extension_type type)
{
  struct see_pre_extension_expr **slot_pre_exp, temp_pre_exp;
  rtx dest_extension_reg = FUNC5 (extension, 1);
  enum rtx_code extension_code;
  enum machine_mode source_extension_mode;

  if (type == DEF_EXTENSION)
    {
      extension_code = FUNC4 (extension,
					       &source_extension_mode);
      FUNC0 (extension_code != UNKNOWN);
      extension =
	FUNC3 (dest_extension_reg, extension_code,
				      source_extension_mode);
    }
  temp_pre_exp.se_insn = extension;
  slot_pre_exp =
    (struct see_pre_extension_expr **) FUNC2 (see_pre_extension_hash,
							&temp_pre_exp, INSERT);
  if (*slot_pre_exp == NULL)
    /* This is the first time this extension instruction is encountered.  Store
       it in the hash.  */
    {
      (*slot_pre_exp) = FUNC6 (sizeof (struct see_pre_extension_expr));
      (*slot_pre_exp)->se_insn = extension;
      (*slot_pre_exp)->bitmap_index =
	(FUNC1 (see_pre_extension_hash) - 1);
      (*slot_pre_exp)->antic_occr = NULL;
      (*slot_pre_exp)->avail_occr = NULL;
      return NULL;
    }
  return *slot_pre_exp;
}