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
typedef  int /*<<< orphan*/  atf_fs_path_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

atf_error_t
FUNC4(atf_fs_path_t *p)
{
    atf_error_t err;
    char *cwd;

#if defined(HAVE_GETCWD_DYN)
    cwd = getcwd(NULL, 0);
#else
    cwd = FUNC3(NULL, MAXPATHLEN);
#endif
    if (cwd == NULL) {
        err = FUNC1(errno, "Cannot determine current directory");
        goto out;
    }

    err = FUNC0(p, "%s", cwd);
    FUNC2(cwd);

out:
    return err;
}