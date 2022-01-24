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
typedef  int ssize_t ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int calc_data_size ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char file_bigendian ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  host_bigendian ; 
 int input_fd ; 
 char long_size ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  page_size ; 
 int /*<<< orphan*/  FUNC4 (struct pevent*) ; 
 int /*<<< orphan*/  FUNC5 (struct pevent*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct pevent*) ; 
 int /*<<< orphan*/  FUNC8 (struct pevent*) ; 
 int /*<<< orphan*/  FUNC9 (struct pevent*) ; 
 int /*<<< orphan*/  FUNC10 (struct pevent*) ; 
 int /*<<< orphan*/  FUNC11 (struct pevent*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct pevent*) ; 
 char* FUNC14 () ; 
 struct pevent* FUNC15 (char,int /*<<< orphan*/ ) ; 
 int repipe ; 

ssize_t FUNC16(int fd, struct pevent **ppevent, bool __repipe)
{
	char buf[BUFSIZ];
	char test[] = { 23, 8, 68 };
	char *version;
	int show_version = 0;
	int show_funcs = 0;
	int show_printk = 0;
	ssize_t size;

	calc_data_size = 1;
	repipe = __repipe;

	input_fd = fd;

	FUNC12(buf, 3);
	if (FUNC3(buf, test, 3) != 0)
		FUNC1("no trace data in the file");

	FUNC12(buf, 7);
	if (FUNC3(buf, "tracing", 7) != 0)
		FUNC1("not a trace file (missing 'tracing' tag)");

	version = FUNC14();
	if (show_version)
		FUNC6("version = %s\n", version);
	FUNC2(version);

	FUNC12(buf, 1);
	file_bigendian = buf[0];
	host_bigendian = FUNC0();

	*ppevent = FUNC15(file_bigendian, host_bigendian);
	if (*ppevent == NULL)
		FUNC1("read_trace_init failed");

	FUNC12(buf, 1);
	long_size = buf[0];

	page_size = FUNC7(*ppevent);

	FUNC11(*ppevent);

	FUNC9(*ppevent);
	FUNC8(*ppevent);
	FUNC13(*ppevent);
	FUNC10(*ppevent);

	size = calc_data_size - 1;
	calc_data_size = 0;
	repipe = false;

	if (show_funcs) {
		FUNC4(*ppevent);
		return size;
	}
	if (show_printk) {
		FUNC5(*ppevent);
		return size;
	}

	return size;
}