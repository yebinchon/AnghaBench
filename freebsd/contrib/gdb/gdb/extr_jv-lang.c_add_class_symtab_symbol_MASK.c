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
struct symbol {int dummy; } ;
struct blockvector {int dummy; } ;

/* Variables and functions */
 struct blockvector* FUNC0 (struct symtab*) ; 
 int /*<<< orphan*/  FUNC1 (struct blockvector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLOBAL_BLOCK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct symbol*) ; 
 struct symtab* FUNC4 () ; 

__attribute__((used)) static void
FUNC5 (struct symbol *sym)
{
  struct symtab *symtab = FUNC4 ();
  struct blockvector *bv = FUNC0 (symtab);
  FUNC3 (FUNC2 (FUNC1 (bv, GLOBAL_BLOCK)), sym);
}