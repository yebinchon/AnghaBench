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
typedef  int /*<<< orphan*/  tree ;
typedef  enum tsi_iterator_update { ____Placeholder_tsi_iterator_update } tsi_iterator_update ;
typedef  enum bsi_iterator_update { ____Placeholder_bsi_iterator_update } bsi_iterator_update ;
struct TYPE_3__ {int /*<<< orphan*/  tsi; int /*<<< orphan*/  bb; } ;
typedef  TYPE_1__ block_stmt_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3 (block_stmt_iterator *i, tree t, enum bsi_iterator_update m)
{
  FUNC0 (t, i->bb);
  FUNC2 (t);
  FUNC1 (&i->tsi, t, (enum tsi_iterator_update) m);
}