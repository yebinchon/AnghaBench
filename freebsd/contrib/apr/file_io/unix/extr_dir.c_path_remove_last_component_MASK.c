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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char const PATH_SEPARATOR ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static char *FUNC3 (const char *path, apr_pool_t *pool)
{
    const char *newpath = FUNC1 (path, pool);
    int i;
    
    for (i = (FUNC2(newpath) - 1); i >= 0; i--) {
        if (path[i] == PATH_SEPARATOR)
            break;
    }

    return FUNC0 (pool, path, (i < 0) ? 0 : i);
}