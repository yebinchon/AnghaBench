#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hashval_t ;
typedef  TYPE_1__* expr_pred_trans_t ;
struct TYPE_2__ {int /*<<< orphan*/  hashcode; } ;

/* Variables and functions */

__attribute__((used)) static hashval_t
FUNC0 (const void *p)
{
  const expr_pred_trans_t ve = (expr_pred_trans_t) p;
  return ve->hashcode;
}