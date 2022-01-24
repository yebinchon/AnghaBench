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
 int /*<<< orphan*/  MAKE_MAKEFILES ; 
 int /*<<< orphan*/  VAR_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char const*,size_t) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(const char *name)
{
    char *old;
    char *ep;
    char *fp = NULL;
    size_t name_len = FUNC5(name);
    
    old = FUNC1(MAKE_MAKEFILES, VAR_GLOBAL, &fp);
    if (old) {
	ep = old + FUNC5(old) - name_len;
	/* does it contain name? */
	for (; old != NULL; old = FUNC4(old, ' ')) {
	    if (*old == ' ')
		old++;
	    if (old >= ep)
		break;			/* cannot contain name */
	    if (FUNC3(old, name, name_len) == 0
		    && (old[name_len] == 0 || old[name_len] == ' '))
		goto cleanup;
	}
    }
    FUNC0 (MAKE_MAKEFILES, name, VAR_GLOBAL);
 cleanup:
    if (fp) {
	FUNC2(fp);
    }
}