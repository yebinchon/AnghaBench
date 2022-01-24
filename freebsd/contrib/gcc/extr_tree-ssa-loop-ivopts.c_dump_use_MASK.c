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
struct iv_use {int id; int type; scalar_t__ related_cands; int /*<<< orphan*/  iv; int /*<<< orphan*/ * op_p; int /*<<< orphan*/  stmt; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  TDF_SLIM ; 
#define  USE_ADDRESS 130 
#define  USE_COMPARE 129 
#define  USE_NONLINEAR_EXPR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5 (FILE *file, struct iv_use *use)
{
  FUNC2 (file, "use %d\n", use->id);

  switch (use->type)
    {
    case USE_NONLINEAR_EXPR:
      FUNC2 (file, "  generic\n");
      break;

    case USE_ADDRESS:
      FUNC2 (file, "  address\n");
      break;

    case USE_COMPARE:
      FUNC2 (file, "  compare\n");
      break;

    default:
      FUNC3 ();
    }

  FUNC2 (file, "  in statement ");
  FUNC4 (file, use->stmt, TDF_SLIM);
  FUNC2 (file, "\n");

  FUNC2 (file, "  at position ");
  if (use->op_p)
    FUNC4 (file, *use->op_p, TDF_SLIM);
  FUNC2 (file, "\n");

  FUNC1 (file, use->iv);

  if (use->related_cands)
    {
      FUNC2 (file, "  related candidates ");
      FUNC0 (file, use->related_cands);
    }
}