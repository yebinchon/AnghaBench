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
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,char*,int const) ; 
 int /*<<< orphan*/  FUNC7 (char*,int const,char*,char const*,char*) ; 

void FUNC8(regex_t *preg, const char *regex, int cflags)
{
    int err;

	FUNC4 (preg, 0, sizeof (regex_t));

	if ((err = FUNC5 (preg, regex, cflags)) != 0) {
        const int errbuf_sz = 200;
        char *errbuf, *rxerr;

		errbuf = (char*)FUNC1(errbuf_sz *sizeof(char));
		if (!errbuf)
			FUNC2(FUNC0("Unable to allocate buffer to report regcomp"));
		rxerr = (char*)FUNC1(errbuf_sz *sizeof(char));
		if (!rxerr)
			FUNC2(FUNC0("Unable to allocate buffer for regerror"));
		FUNC6 (err, preg, rxerr, errbuf_sz);
		FUNC7 (errbuf, errbuf_sz, "regcomp for \"%s\" failed: %s", regex, rxerr);

		FUNC2 (errbuf);
        FUNC3(errbuf);
        FUNC3(rxerr);
	}
}