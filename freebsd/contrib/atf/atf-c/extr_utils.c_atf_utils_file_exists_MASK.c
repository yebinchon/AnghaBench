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

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  F_OK ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

bool
FUNC3(const char *path)
{
    const int ret = FUNC0(path, F_OK);
    if (ret == -1) {
        if (errno != ENOENT)
            FUNC1("Failed to check the existence of %s: %s", path,
                        FUNC2(errno));
        else
            return false;
    } else
        return true;
}