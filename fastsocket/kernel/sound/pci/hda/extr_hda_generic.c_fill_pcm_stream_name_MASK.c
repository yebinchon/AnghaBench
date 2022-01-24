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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 

__attribute__((used)) static void FUNC4(char *str, size_t len, const char *sfx,
				 const char *chip_name)
{
	char *p;

	if (*str)
		return;
	FUNC3(str, chip_name, len);

	/* drop non-alnum chars after a space */
	for (p = FUNC1(str, ' '); p; p = FUNC1(p + 1, ' ')) {
		if (!FUNC0(p[1])) {
			*p = 0;
			break;
		}
	}
	FUNC2(str, sfx, len);
}