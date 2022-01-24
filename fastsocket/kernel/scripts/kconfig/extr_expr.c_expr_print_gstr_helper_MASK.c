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
struct symbol {int dummy; } ;
struct gstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gstr*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct gstr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct symbol*) ; 

__attribute__((used)) static void FUNC3(void *data, struct symbol *sym, const char *str)
{
	FUNC0((struct gstr*)data, str);
	if (sym)
		FUNC1((struct gstr*)data, " [=%s]", FUNC2(sym));
}