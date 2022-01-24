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
struct perf_probe_point {char* file; scalar_t__ retprobe; int /*<<< orphan*/  function; int /*<<< orphan*/  line; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MAX_CMDLEN ; 
 int FUNC0 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC7(struct perf_probe_point *pp)
{
	char *buf, *tmp;
	char offs[32] = "", line[32] = "", file[32] = "";
	int ret, len;

	buf = FUNC6(MAX_CMDLEN);
	if (buf == NULL) {
		ret = -ENOMEM;
		goto error;
	}
	if (pp->offset) {
		ret = FUNC0(offs, 32, "+%lu", pp->offset);
		if (ret <= 0)
			goto error;
	}
	if (pp->line) {
		ret = FUNC0(line, 32, ":%d", pp->line);
		if (ret <= 0)
			goto error;
	}
	if (pp->file) {
		tmp = pp->file;
		len = FUNC5(tmp);
		if (len > 30) {
			tmp = FUNC3(pp->file + len - 30, '/');
			tmp = tmp ? tmp + 1 : pp->file + len - 30;
		}
		ret = FUNC0(file, 32, "@%s", tmp);
		if (ret <= 0)
			goto error;
	}

	if (pp->function)
		ret = FUNC0(buf, MAX_CMDLEN, "%s%s%s%s%s", pp->function,
				 offs, pp->retprobe ? "%return" : "", line,
				 file);
	else
		ret = FUNC0(buf, MAX_CMDLEN, "%s%s", file, line);
	if (ret <= 0)
		goto error;

	return buf;
error:
	FUNC2("Failed to synthesize perf probe point: %s\n",
		 FUNC4(-ret));
	if (buf)
		FUNC1(buf);
	return NULL;
}