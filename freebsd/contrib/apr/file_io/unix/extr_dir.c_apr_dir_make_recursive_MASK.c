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
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_fileperms_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ APR_SUCCESS ; 
 scalar_t__ ENOENT ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 

apr_status_t FUNC3(const char *path, apr_fileperms_t perm,
                                           apr_pool_t *pool) 
{
    apr_status_t apr_err = 0;
    
    apr_err = FUNC1 (path, perm, pool); /* Try to make PATH right out */
    
    if (apr_err == ENOENT) { /* Missing an intermediate dir */
        char *dir;
        
        dir = FUNC2(path, pool);
        /* If there is no path left, give up. */
        if (dir[0] == '\0') {
            return apr_err;
        }

        apr_err = FUNC3(dir, perm, pool);
        
        if (!apr_err) 
            apr_err = FUNC1 (path, perm, pool);
    }

    /*
     * It's OK if PATH exists. Timing issues can lead to the second
     * apr_dir_make being called on existing dir, therefore this check
     * has to come last.
     */
    if (FUNC0(apr_err))
        return APR_SUCCESS;

    return apr_err;
}