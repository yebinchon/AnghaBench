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
struct occr {int /*<<< orphan*/  insn; struct occr* next; } ;
typedef  scalar_t__ basic_block ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct occr*
FUNC1 (basic_block bb, struct occr *occr)
{
  for (; occr != NULL; occr = occr->next)
    if (FUNC0 (occr->insn) == bb)
      return occr;
  return NULL;
}