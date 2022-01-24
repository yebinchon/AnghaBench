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
struct tracing_data {int temp; scalar_t__ size; int /*<<< orphan*/  temp_file; } ;
struct tracepoint_path {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct tracepoint_path* FUNC2 (struct list_head*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tracing_data* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int output_fd ; 
 int /*<<< orphan*/  FUNC7 (struct tracepoint_path*) ; 
 int /*<<< orphan*/  FUNC8 (struct tracepoint_path*) ; 
 int /*<<< orphan*/  FUNC9 (struct tracepoint_path*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

struct tracing_data *FUNC15(struct list_head *pattrs,
				      int fd, bool temp)
{
	struct tracepoint_path *tps;
	struct tracing_data *tdata;

	output_fd = fd;

	tps = FUNC2(pattrs);
	if (!tps)
		return NULL;

	tdata = FUNC4(sizeof(*tdata));
	tdata->temp = temp;
	tdata->size = 0;

	if (temp) {
		int temp_fd;

		FUNC13(tdata->temp_file, sizeof(tdata->temp_file),
			 "/tmp/perf-XXXXXX");
		if (!FUNC5(tdata->temp_file))
			FUNC1("Can't make temp file");

		temp_fd = FUNC6(tdata->temp_file, O_RDWR);
		if (temp_fd < 0)
			FUNC1("Can't read '%s'", tdata->temp_file);

		/*
		 * Set the temp file the default output, so all the
		 * tracing data are stored into it.
		 */
		output_fd = temp_fd;
	}

	FUNC14();
	FUNC11();
	FUNC9(tps);
	FUNC8(tps);
	FUNC12();
	FUNC10();

	/*
	 * All tracing data are stored by now, we can restore
	 * the default output file in case we used temp file.
	 */
	if (temp) {
		tdata->size = FUNC3(output_fd, 0, SEEK_CUR);
		FUNC0(output_fd);
		output_fd = fd;
	}

	FUNC7(tps);
	return tdata;
}