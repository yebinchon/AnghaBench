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
struct perf_session {scalar_t__ fd_pipe; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  build_id__mark_dso_hit_ops ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  input_name ; 
 int /*<<< orphan*/  FUNC1 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_session*,int /*<<< orphan*/ ,int) ; 
 struct perf_session* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_session*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(bool force, bool with_hits)
{
	struct perf_session *session;

	FUNC5();

	session = FUNC3(input_name, O_RDONLY, force, false,
				    &build_id__mark_dso_hit_ops);
	if (session == NULL)
		return -1;

	/*
	 * See if this is an ELF file first:
	 */
	if (FUNC0(session->filename, stdout))
		goto out;

	/*
	 * in pipe-mode, the only way to get the buildids is to parse
	 * the record stream. Buildids are stored as RECORD_HEADER_BUILD_ID
	 */
	if (with_hits || session->fd_pipe)
		FUNC4(session, &build_id__mark_dso_hit_ops);

	FUNC2(session, stdout, with_hits);
out:
	FUNC1(session);
	return 0;
}