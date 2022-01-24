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
struct stat {int st_mode; scalar_t__ st_uid; int /*<<< orphan*/  st_gid; } ;
typedef  int /*<<< orphan*/  atf_fs_path_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int S_IWUSR ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 int atf_fs_access_f ; 
 int atf_fs_access_r ; 
 int atf_fs_access_w ; 
 int atf_fs_access_x ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  errno ; 
 int FUNC7 (int /*<<< orphan*/ ,struct stat*) ; 

atf_error_t
FUNC8(const atf_fs_path_t *p, int mode)
{
    atf_error_t err;
    struct stat st;
    bool ok;

    FUNC0(mode & atf_fs_access_f || mode & atf_fs_access_r ||
        mode & atf_fs_access_w || mode & atf_fs_access_x);

    if (FUNC7(FUNC1(p), &st) == -1) {
        err = FUNC2(errno, "Cannot get information from file %s",
                             FUNC1(p));
        goto out;
    }

    err = FUNC3();

    /* Early return if we are only checking for existence and the file
     * exists (stat call returned). */
    if (mode & atf_fs_access_f)
        goto out;

    ok = false;
    if (FUNC6()) {
        if (!ok && !(mode & atf_fs_access_x)) {
            /* Allow root to read/write any file. */
            ok = true;
        }

        if (!ok && (st.st_mode & (S_IXUSR | S_IXGRP | S_IXOTH))) {
            /* Allow root to execute the file if any of its execution bits
             * are set. */
            ok = true;
        }
    } else {
        if (!ok && (FUNC4() == st.st_uid)) {
            ok = ((mode & atf_fs_access_r) && (st.st_mode & S_IRUSR)) ||
                 ((mode & atf_fs_access_w) && (st.st_mode & S_IWUSR)) ||
                 ((mode & atf_fs_access_x) && (st.st_mode & S_IXUSR));
        }
        if (!ok && FUNC5(st.st_gid)) {
            ok = ((mode & atf_fs_access_r) && (st.st_mode & S_IRGRP)) ||
                 ((mode & atf_fs_access_w) && (st.st_mode & S_IWGRP)) ||
                 ((mode & atf_fs_access_x) && (st.st_mode & S_IXGRP));
        }
        if (!ok && ((FUNC4() != st.st_uid) &&
                    !FUNC5(st.st_gid))) {
            ok = ((mode & atf_fs_access_r) && (st.st_mode & S_IROTH)) ||
                 ((mode & atf_fs_access_w) && (st.st_mode & S_IWOTH)) ||
                 ((mode & atf_fs_access_x) && (st.st_mode & S_IXOTH));
        }
    }

    if (!ok)
        err = FUNC2(EACCES, "Access check failed");

out:
    return err;
}