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
struct perf_header {int dummy; } ;
struct perf_session {int fd; int /*<<< orphan*/  repipe; struct perf_header header; } ;
struct perf_pipe_file_header {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct perf_pipe_file_header*,struct perf_header*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct perf_session *session, int fd)
{
	struct perf_header *header = &session->header;
	struct perf_pipe_file_header f_header;

	if (FUNC0(&f_header, header, fd,
					session->repipe) < 0) {
		FUNC1("incompatible file format\n");
		return -EINVAL;
	}

	session->fd = fd;

	return 0;
}