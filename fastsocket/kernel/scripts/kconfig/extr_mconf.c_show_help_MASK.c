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
struct menu {int dummy; } ;
struct gstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct menu*,struct gstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct menu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gstr*) ; 
 int /*<<< orphan*/  FUNC5 (struct gstr*) ; 
 struct gstr FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct menu *menu)
{
	struct gstr help = FUNC6();

	FUNC1(menu, &help);

	FUNC3(FUNC0(FUNC2(menu)), FUNC5(&help));
	FUNC4(&help);
}