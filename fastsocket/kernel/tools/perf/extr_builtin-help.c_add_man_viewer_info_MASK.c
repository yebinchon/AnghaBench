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
 int FUNC0 (char const*,int,char const*) ; 
 int FUNC1 (char const*,int,char const*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 char* FUNC5 (char const*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

__attribute__((used)) static int FUNC7(const char *var, const char *value)
{
	const char *name = var + 4;
	const char *subkey = FUNC5(name, '.');

	if (!subkey)
		return FUNC3("Config with no key for man viewer: %s", name);

	if (!FUNC4(subkey, ".path")) {
		if (!value)
			return FUNC2(var);
		return FUNC1(name, subkey - name, value);
	}
	if (!FUNC4(subkey, ".cmd")) {
		if (!value)
			return FUNC2(var);
		return FUNC0(name, subkey - name, value);
	}

	FUNC6("'%s': unsupported man viewer sub key.", subkey);
	return 0;
}