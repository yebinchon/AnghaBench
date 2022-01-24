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
typedef  int /*<<< orphan*/  tzbuf ;
struct tm {int dummy; } ;
struct iso8601_fmt {char* format_string; } ;
typedef  int /*<<< orphan*/  fmtbuf ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 struct iso8601_fmt const* iso8601_fmts ; 
 struct iso8601_fmt const* iso8601_selected ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC4(struct tm *lt)
{
	const struct iso8601_fmt *it;
	char fmtbuf[32], buf[32], tzbuf[8];

	fmtbuf[0] = 0;
	for (it = iso8601_fmts; it <= iso8601_selected; it++)
		FUNC3(fmtbuf, it->format_string, sizeof(fmtbuf));

	(void)FUNC2(buf, sizeof(buf), fmtbuf, lt);

	if (iso8601_selected > iso8601_fmts) {
		(void)FUNC2(tzbuf, sizeof(tzbuf), "%z", lt);
		FUNC0(&tzbuf[4], &tzbuf[3], 3);
		tzbuf[3] = ':';
		FUNC3(buf, tzbuf, sizeof(buf));
	}

	FUNC1(buf);
}