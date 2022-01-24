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
struct hash_table {struct expr** table; int /*<<< orphan*/  size; } ;
struct expr {struct expr* next_same_hash; int /*<<< orphan*/  expr; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct expr *
FUNC3 (unsigned int regno, struct hash_table *table)
{
  unsigned int hash = FUNC2 (regno, table->size);
  struct expr *expr;

  expr = table->table[hash];

  while (expr && FUNC0 (FUNC1 (expr->expr)) != regno)
    expr = expr->next_same_hash;

  return expr;
}