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
struct event_format {int dummy; } ;

/* Variables and functions */
 scalar_t__ BUFSIZ ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct event_format**,void*,size_t,char const*) ; 
 int FUNC5 (int,void*,scalar_t__) ; 
 void* FUNC6 (void*,size_t) ; 
 int /*<<< orphan*/  tracing_events_path ; 

struct event_format *FUNC7(const char *sys, const char *name)
{
	int fd, n;
	char *filename;
	void *bf = NULL, *nbf;
	size_t size = 0, alloc_size = 0;
	struct event_format *format = NULL;

	if (FUNC0(&filename, "%d/%s/%s/format", tracing_events_path, sys, name) < 0)
		goto out;

	fd = FUNC3(filename, O_RDONLY);
	if (fd < 0)
		goto out_free_filename;

	do {
		if (size == alloc_size) {
			alloc_size += BUFSIZ;
			nbf = FUNC6(bf, alloc_size);
			if (nbf == NULL)
				goto out_free_bf;
			bf = nbf;
		}

		n = FUNC5(fd, bf + size, BUFSIZ);
		if (n < 0)
			goto out_free_bf;
		size += n;
	} while (n > 0);

	FUNC4(&format, bf, size, sys);

out_free_bf:
	FUNC2(bf);
	FUNC1(fd);
out_free_filename:
	FUNC2(filename);
out:
	return format;
}