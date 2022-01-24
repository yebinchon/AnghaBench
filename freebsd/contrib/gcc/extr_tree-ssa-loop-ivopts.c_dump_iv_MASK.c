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
struct iv {scalar_t__ biv_p; scalar_t__ base_object; scalar_t__ base; scalar_t__ step; scalar_t__ ssa_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  TDF_SLIM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC3 (FILE *file, struct iv *iv)
{
  if (iv->ssa_name)
    {
      FUNC1 (file, "ssa name ");
      FUNC2 (file, iv->ssa_name, TDF_SLIM);
      FUNC1 (file, "\n");
    }

  FUNC1 (file, "  type ");
  FUNC2 (file, FUNC0 (iv->base), TDF_SLIM);
  FUNC1 (file, "\n");

  if (iv->step)
    {
      FUNC1 (file, "  base ");
      FUNC2 (file, iv->base, TDF_SLIM);
      FUNC1 (file, "\n");

      FUNC1 (file, "  step ");
      FUNC2 (file, iv->step, TDF_SLIM);
      FUNC1 (file, "\n");
    }
  else
    {
      FUNC1 (file, "  invariant ");
      FUNC2 (file, iv->base, TDF_SLIM);
      FUNC1 (file, "\n");
    }

  if (iv->base_object)
    {
      FUNC1 (file, "  base object ");
      FUNC2 (file, iv->base_object, TDF_SLIM);
      FUNC1 (file, "\n");
    }

  if (iv->biv_p)
    FUNC1 (file, "  is a biv\n");
}