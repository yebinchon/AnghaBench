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
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  VAR ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC7 (unsigned char) ; 
 scalar_t__ FUNC8 (unsigned char) ; 
 size_t FUNC9 (char const*) ; 

__attribute__((used)) static char *
FUNC10(char *str, Boolean quoteDollar)
{

    Buffer  	  buf;
    const char	*newline;
    size_t nlen;

    if ((newline = FUNC5()) == NULL)
	    newline = "\\\n";
    nlen = FUNC9(newline);

    FUNC3(&buf, 0);

    for (; *str != '\0'; str++) {
	if (*str == '\n') {
	    FUNC1(&buf, nlen, newline);
	    continue;
	}
	if (FUNC8((unsigned char)*str) || FUNC7((unsigned char)*str))
	    FUNC0(&buf, '\\');
	FUNC0(&buf, *str);
	if (quoteDollar && *str == '$')
	    FUNC1(&buf, 2, "\\$");
    }

    str = FUNC2(&buf, FALSE);
    if (FUNC4(VAR))
	FUNC6(debug_file, "QuoteMeta: [%s]\n", str);
    return str;
}