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
struct pevent {int dummy; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  header_page_size_size ; 
 int /*<<< orphan*/  long_size ; 
 char* FUNC2 (unsigned long long) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 unsigned long long FUNC4 (struct pevent*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long long) ; 

__attribute__((used)) static void FUNC7(struct pevent *pevent)
{
	unsigned long long size;
	char *header_event;
	char buf[BUFSIZ];

	FUNC5(buf, 12);

	if (FUNC3(buf, "header_page", 12) != 0)
		FUNC0("did not read header page");

	size = FUNC4(pevent);
	FUNC6(size);

	/*
	 * The size field in the page is of type long,
	 * use that instead, since it represents the kernel.
	 */
	long_size = header_page_size_size;

	FUNC5(buf, 13);
	if (FUNC3(buf, "header_event", 13) != 0)
		FUNC0("did not read header event");

	size = FUNC4(pevent);
	header_event = FUNC2(size);
	FUNC5(header_event, size);
	FUNC1(header_event);
}