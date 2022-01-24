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
struct sym_entry {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(const void *l, const void *r)
{

	FUNC0(l != NULL);
	FUNC0(r != NULL);
	FUNC0(((const struct sym_entry *)l)->name != NULL);
	FUNC0(((const struct sym_entry *)r)->name != NULL);

	return (FUNC1(((const struct sym_entry *)l)->name,
	    ((const struct sym_entry *)r)->name));
}