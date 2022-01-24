#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cfa_save_data {struct cfa_save_data* next; int /*<<< orphan*/  cfa_offset; } ;
struct TYPE_4__ {TYPE_1__* frch_cfi_data; } ;
struct TYPE_3__ {struct cfa_save_data* cfa_save_stack; int /*<<< orphan*/  cur_cfa_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_CFA_restore_state ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* frchain_now ; 
 int /*<<< orphan*/  FUNC3 (struct cfa_save_data*) ; 

void
FUNC4 (void)
{
  struct cfa_save_data *p;

  FUNC2 (DW_CFA_restore_state);

  p = frchain_now->frch_cfi_data->cfa_save_stack;
  if (p)
    {
      frchain_now->frch_cfi_data->cur_cfa_offset = p->cfa_offset;
      frchain_now->frch_cfi_data->cfa_save_stack = p->next;
      FUNC3 (p);
    }
  else
    FUNC1 (FUNC0("CFI state restore without previous remember"));
}