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
typedef  int apr_status_t ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static char *FUNC3(apr_status_t statcode, char *buf,
                             apr_size_t bufsize)
{
#ifdef _WIN32_WCE
    static char err[32];
    sprintf(err, "Native Error #%d", statcode);
    return stuffbuffer(buf, bufsize, err);
#else
    const char *err = FUNC1(statcode);
    if (err) {
        return FUNC2(buf, bufsize, err);
    } else {
        return FUNC2(buf, bufsize, 
                           "APR does not understand this error code");
    }
#endif
}