#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ n_elems; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,TYPE_1__*) ; 
 TYPE_1__ expr_hash_table ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  last_basic_block ; 
 int /*<<< orphan*/  max_cuid ; 

__attribute__((used)) static int
FUNC8 (void)
{
  int changed = 0;

  FUNC1 (max_cuid, &expr_hash_table, 0);
  FUNC3 (&expr_hash_table);
  if (dump_file)
    FUNC4 (dump_file, "Code Hosting Expressions", &expr_hash_table);

  if (expr_hash_table.n_elems > 0)
    {
      FUNC0 (last_basic_block, expr_hash_table.n_elems);
      FUNC2 ();
      FUNC7 ();
      FUNC5 ();
    }

  FUNC6 (&expr_hash_table);

  return changed;
}