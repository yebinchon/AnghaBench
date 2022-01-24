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
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cred const*) ; 
 int FUNC4 (struct cred const**) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/ * rec_file ; 

void
FUNC6(char *rec_dirname)
{
	const struct cred *original_cred;
	int status;

	FUNC5("NFSD: Using %s as the NFSv4 state recovery directory\n",
			rec_dirname);

	FUNC0(rec_file);

	status = FUNC4(&original_cred);
	if (status < 0) {
		FUNC5("NFSD: Unable to change credentials to find recovery"
		       " directory: error %d\n",
		       status);
		return;
	}

	rec_file = FUNC2(rec_dirname, O_RDONLY | O_DIRECTORY, 0);
	if (FUNC1(rec_file)) {
		FUNC5("NFSD: unable to find recovery directory %s\n",
				rec_dirname);
		rec_file = NULL;
	}

	FUNC3(original_cred);
}