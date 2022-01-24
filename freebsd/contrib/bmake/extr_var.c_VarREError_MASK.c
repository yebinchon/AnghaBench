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
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void
FUNC4(int reerr, regex_t *pat, const char *str)
{
    char *errbuf;
    int errlen;

    errlen = FUNC3(reerr, pat, 0, 0);
    errbuf = FUNC1(errlen);
    FUNC3(reerr, pat, errbuf, errlen);
    FUNC0("%s: %s", str, errbuf);
    FUNC2(errbuf);
}