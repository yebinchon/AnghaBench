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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int K_ESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  ui__lock ; 
 int FUNC4 (char const*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const char *title, const char *format, va_list args)
{
	char *s;

	if (FUNC5(&s, format, args) > 0) {
		int key;

		FUNC2(&ui__lock);
		key = FUNC4(title, s, "Press any key...", 0);
		FUNC3(&ui__lock);
		FUNC1(s);
		return key;
	}

	FUNC0(stderr, "%s\n", title);
	FUNC6(stderr, format, args);
	return K_ESC;
}