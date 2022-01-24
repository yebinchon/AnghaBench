#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  state ;
typedef  int /*<<< orphan*/  mbstate_t ;
struct TYPE_4__ {int* list; } ;
typedef  TYPE_1__ CACHE ;

/* Variables and functions */
 int /*<<< orphan*/  cInxWideChars ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

const int *
FUNC7(const char *string)
{
    unsigned len = (unsigned) FUNC0(string);
    unsigned inx;
    CACHE *cache = FUNC2(cInxWideChars, string);

    if (!FUNC5(cache, string, len)) {
	const char *current = string;

	cache->list[0] = 0;
	for (inx = 1; inx <= len; ++inx) {
#ifdef USE_WIDE_CURSES
	    if (have_locale()) {
		mbstate_t state;
		int width;
		memset(&state, 0, sizeof(state));
		width = (int) mbrlen(current, strlen(current), &state);
		if (width <= 0)
		    width = 1;	/* FIXME: what if we have a control-char? */
		current += width;
		cache->list[inx] = cache->list[inx - 1] + width;
	    } else
#endif /* USE_WIDE_CURSES */
	    {
		(void) current;
		cache->list[inx] = (int) inx;
	    }
	}
    }
    return cache->list;
}