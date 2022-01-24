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
struct expr {int /*<<< orphan*/ * avail_occr; int /*<<< orphan*/  hash; int /*<<< orphan*/  expr; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  hashval_t ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 int /*<<< orphan*/  expr_obstack ; 
 int /*<<< orphan*/  expr_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct expr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct expr*) ; 

__attribute__((used)) static struct expr *
FUNC4 (rtx pat)
{
  int do_not_record_p;
  struct expr **slot, *tmp_expr;
  hashval_t hash = FUNC0 (pat, &do_not_record_p);

  if (do_not_record_p)
    return NULL;

  tmp_expr = (struct expr *) FUNC2 (&expr_obstack,
					    sizeof (struct expr));
  tmp_expr->expr = pat;
  tmp_expr->hash = hash;
  tmp_expr->avail_occr = NULL;

  slot = (struct expr **) FUNC1 (expr_table, tmp_expr,
                                                    hash, INSERT);
  FUNC3 (&expr_obstack, tmp_expr);

  if (!slot)
    return NULL;
  else
    return (*slot);
}