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
struct iv_ca {struct iv_ca* n_invariant_uses; int /*<<< orphan*/  cands; struct iv_ca* n_cand_uses; struct iv_ca* cand_for_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iv_ca*) ; 

__attribute__((used)) static void
FUNC2 (struct iv_ca **ivs)
{
  FUNC1 ((*ivs)->cand_for_use);
  FUNC1 ((*ivs)->n_cand_uses);
  FUNC0 ((*ivs)->cands);
  FUNC1 ((*ivs)->n_invariant_uses);
  FUNC1 (*ivs);
  *ivs = NULL;
}