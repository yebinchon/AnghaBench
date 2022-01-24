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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  dump_hash_table_entry ; 
 int /*<<< orphan*/  expr_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5 (FILE *file)
{
  FUNC0 (file, "\n\nexpression hash table\n");
  FUNC0 (file, "size %ld, %ld elements, %f collision/search ratio\n",
           (long) FUNC3 (expr_table),
           (long) FUNC2 (expr_table),
           FUNC1 (expr_table));
  if (FUNC2 (expr_table) > 0)
    {
      FUNC0 (file, "\n\ntable entries:\n");
      FUNC4 (expr_table, dump_hash_table_entry, file);
    }
  FUNC0 (file, "\n");
}