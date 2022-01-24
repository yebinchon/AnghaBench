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
struct occr {struct occr* next; int /*<<< orphan*/  insn; } ;
struct expr {int hash; struct occr* avail_occr; int /*<<< orphan*/  expr; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (void **slot, void *filep)
{
  struct expr *expr = (struct expr *) *slot;
  FILE *file = (FILE *) filep;
  struct occr *occr;

  FUNC0 (file, "expr: ");
  FUNC1 (file, expr->expr);
  FUNC0 (file,"\nhashcode: %u\n", expr->hash);
  FUNC0 (file,"list of occurrences:\n");
  occr = expr->avail_occr;
  while (occr)
    {
      rtx insn = occr->insn;
      FUNC2 (file, insn);
      FUNC0 (file, "\n");
      occr = occr->next;
    }
  FUNC0 (file, "\n");
  return 1;
}