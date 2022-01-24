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
struct fib_alias {int /*<<< orphan*/ * fa_info; } ;
struct fib_node {struct fib_alias fn_embedded_alias; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fn_alias_kmem ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fib_alias*) ; 

__attribute__((used)) static inline void FUNC2(struct fib_alias *fa, struct fib_node *f)
{
	FUNC0(fa->fa_info);
	if (fa == &f->fn_embedded_alias)
		fa->fa_info = NULL;
	else
		FUNC1(fn_alias_kmem, fa);
}