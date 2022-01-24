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
struct alias {int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int CHKALIAS ; 
 int CHKKWD ; 
 int CHKNL ; 
 int KWDOFFSET ; 
 int TNL ; 
 int TNOT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int TWORD ; 
 int checkkwd ; 
 scalar_t__ FUNC1 (char const* const,char const*) ; 
 int lasttoken ; 
 struct alias* FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char const* const* parsekwd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct alias*) ; 
 int /*<<< orphan*/  quoteflag ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tokname ; 
 int tokpushback ; 
 char const* wordtext ; 
 int FUNC6 () ; 

__attribute__((used)) static int
FUNC7(void)
{
	int t;
	struct alias *ap;
#ifdef DEBUG
	int alreadyseen = tokpushback;
#endif

	top:
	t = FUNC6();

	/*
	 * eat newlines
	 */
	if (checkkwd & CHKNL) {
		while (t == TNL) {
			FUNC3();
			t = FUNC6();
		}
	}

	/*
	 * check for keywords and aliases
	 */
	if (t == TWORD && !quoteflag)
	{
		const char * const *pp;

		if (checkkwd & CHKKWD)
			for (pp = parsekwd; *pp; pp++) {
				if (**pp == *wordtext && FUNC1(*pp, wordtext))
				{
					lasttoken = t = pp - parsekwd + KWDOFFSET;
					FUNC0(("keyword %s recognized\n", tokname[t]));
					goto out;
				}
			}
		if (checkkwd & CHKALIAS &&
		    (ap = FUNC2(wordtext, 1)) != NULL) {
			FUNC4(ap->val, FUNC5(ap->val), ap);
			goto top;
		}
	}
out:
	if (t != TNOT)
		checkkwd = 0;

#ifdef DEBUG
	if (!alreadyseen)
	    TRACE(("token %s %s\n", tokname[t], t == TWORD ? wordtext : ""));
	else
	    TRACE(("reread token %s %s\n", tokname[t], t == TWORD ? wordtext : ""));
#endif
	return (t);
}