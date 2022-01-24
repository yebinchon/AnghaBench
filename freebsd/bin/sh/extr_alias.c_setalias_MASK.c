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
struct alias {struct alias* next; scalar_t__ flag; void* val; void* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  aliases ; 
 struct alias* FUNC0 (int) ; 
 struct alias** FUNC1 (char const*) ; 
 void* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static
void
FUNC4(const char *name, const char *val)
{
	struct alias *ap, **app;

	FUNC3(name);
	app = FUNC1(name);
	INTOFF;
	ap = FUNC0(sizeof (struct alias));
	ap->name = FUNC2(name);
	ap->val = FUNC2(val);
	ap->flag = 0;
	ap->next = *app;
	*app = ap;
	aliases++;
	INTON;
}