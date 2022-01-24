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
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *perf_cmd)
{
	const char *page = FUNC0(perf_cmd);
	struct strbuf page_path; /* it leaks but we exec bellow */

	if (FUNC1(&page_path, page) != 0)
		return -1;

	FUNC2(page_path.buf);

	return 0;
}