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
struct ivopts_data {unsigned int max_inv_id; } ;
struct iv_ca {scalar_t__* n_invariant_uses; int /*<<< orphan*/  cands; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (struct iv_ca*) ; 

__attribute__((used)) static void
FUNC3 (struct ivopts_data *data, FILE *file, struct iv_ca *ivs)
{
  const char *pref = "  invariants ";
  unsigned i;

  FUNC1 (file, "  cost %d\n", FUNC2 (ivs));
  FUNC0 (file, ivs->cands, "  candidates ","\n");

  for (i = 1; i <= data->max_inv_id; i++)
    if (ivs->n_invariant_uses[i])
      {
	FUNC1 (file, "%s%d", pref, i);
	pref = ", ";
      }
  FUNC1 (file, "\n");
}