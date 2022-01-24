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
struct occr {void* insn; scalar_t__ deleted_p; struct occr* next; } ;
struct hash_table {int /*<<< orphan*/  n_elems; struct expr** table; int /*<<< orphan*/  size; } ;
struct expr {struct occr* avail_occr; int /*<<< orphan*/ * antic_occr; struct expr* next_same_hash; scalar_t__ bitmap_index; int /*<<< orphan*/  expr; } ;
typedef  void* rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int bytes_used ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 void* FUNC8 (int) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (rtx x, rtx insn, struct hash_table *table)
{
  int found;
  unsigned int hash;
  struct expr *cur_expr, *last_expr = NULL;
  struct occr *cur_occr;

  FUNC7 (FUNC1 (x) == SET && FUNC3 (FUNC4 (x)));

  hash = FUNC9 (FUNC2 (FUNC4 (x)), table->size);

  cur_expr = table->table[hash];
  found = 0;

  while (cur_expr && 0 == (found = FUNC6 (cur_expr->expr, x)))
    {
      /* If the expression isn't found, save a pointer to the end of
	 the list.  */
      last_expr = cur_expr;
      cur_expr = cur_expr->next_same_hash;
    }

  if (! found)
    {
      cur_expr = FUNC8 (sizeof (struct expr));
      bytes_used += sizeof (struct expr);
      if (table->table[hash] == NULL)
	/* This is the first pattern that hashed to this index.  */
	table->table[hash] = cur_expr;
      else
	/* Add EXPR to end of this hash chain.  */
	last_expr->next_same_hash = cur_expr;

      /* Set the fields of the expr element.
	 We must copy X because it can be modified when copy propagation is
	 performed on its operands.  */
      cur_expr->expr = FUNC5 (x);
      cur_expr->bitmap_index = table->n_elems++;
      cur_expr->next_same_hash = NULL;
      cur_expr->antic_occr = NULL;
      cur_expr->avail_occr = NULL;
    }

  /* Now record the occurrence.  */
  cur_occr = cur_expr->avail_occr;

  if (cur_occr && FUNC0 (cur_occr->insn) == FUNC0 (insn))
    {
      /* Found another instance of the expression in the same basic block.
	 Prefer this occurrence to the currently recorded one.  We want
	 the last one in the block and the block is scanned from start
	 to end.  */
      cur_occr->insn = insn;
    }
  else
    {
      /* First occurrence of this expression in this basic block.  */
      cur_occr = FUNC8 (sizeof (struct occr));
      bytes_used += sizeof (struct occr);

	  cur_occr->insn = insn;
	  cur_occr->next = cur_expr->avail_occr;
	  cur_occr->deleted_p = 0;
	  cur_expr->avail_occr = cur_occr;
    }
}