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
struct stat {int /*<<< orphan*/  st_ctime; } ;
struct perf_session {int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_session*,int /*<<< orphan*/ *,int) ; 

void FUNC4(struct perf_session *session, FILE *fp,
				bool full)
{
	struct stat st;
	int ret;

	if (session == NULL || fp == NULL)
		return;

	ret = FUNC2(session->fd, &st);
	if (ret == -1)
		return;

	FUNC1(fp, "# ========\n");
	FUNC1(fp, "# captured on: %s", FUNC0(&st.st_ctime));
	FUNC3(session, fp, full);
	FUNC1(fp, "# ========\n#\n");
}