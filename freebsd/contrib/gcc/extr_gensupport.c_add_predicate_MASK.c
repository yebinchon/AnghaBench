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
struct pred_data {struct pred_data* next; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 void** FUNC1 (int /*<<< orphan*/ ,struct pred_data*,int /*<<< orphan*/ ) ; 
 struct pred_data** last_predicate ; 
 int /*<<< orphan*/  predicate_table ; 

void
FUNC2 (struct pred_data *pred)
{
  void **slot = FUNC1 (predicate_table, pred, INSERT);
  if (*slot)
    {
      FUNC0 ("duplicate predicate definition for '%s'", pred->name);
      return;
    }
  *slot = pred;
  *last_predicate = pred;
  last_predicate = &pred->next;
}