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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  VARF_WANTRES ; 
 int /*<<< orphan*/  VAR_GLOBAL ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,char*,char const*) ; 

Boolean
FUNC4(const char *name, Boolean bf)
{
    char tmp[64];
    char *cp;

    if (FUNC3(tmp, sizeof(tmp), "${%s:U:tl}", name) < (int)(sizeof(tmp))) {
	cp = FUNC0(NULL, tmp, VAR_GLOBAL, VARF_WANTRES);

	if (cp) {
	    bf = FUNC2(cp, bf);
	    FUNC1(cp);
	}
    }
    return (bf);
}