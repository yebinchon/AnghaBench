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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC3(char *s, char *str, int nbytes)
{
	int len = FUNC1(s);

	if (nbytes == 0) {
		/*
		 * Like snprintf(3C), we don't check the value of str if the
		 * number of bytes is 0.
		 */
		return (len);
	}

	if (nbytes <= len) {
		(void) FUNC2(str, s, nbytes - 1);
		/*
		 * Like snprintf(3C) (and unlike strncpy(3C)), we guarantee
		 * that the string is null-terminated.
		 */
		str[nbytes - 1] = '\0';
	} else {
		(void) FUNC0(str, s);
	}

	return (len);
}