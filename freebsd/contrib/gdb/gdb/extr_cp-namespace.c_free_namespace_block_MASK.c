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
struct symtab {int dummy; } ;
struct block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symtab*) ; 
 struct block* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct block*) ; 
 int /*<<< orphan*/  FIRST_LOCAL_BLOCK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (struct symtab *symtab)
{
  struct block *possible_namespace_block;

  possible_namespace_block = FUNC1 (FUNC0 (symtab),
						FIRST_LOCAL_BLOCK);
  FUNC4 (possible_namespace_block != NULL);
  FUNC3 (FUNC2 (possible_namespace_block));
}