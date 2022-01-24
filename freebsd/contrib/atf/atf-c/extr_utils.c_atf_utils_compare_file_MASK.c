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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 scalar_t__ FUNC2 (char const*,char*,scalar_t__) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int const,char*,int) ; 
 scalar_t__ FUNC5 (char const*) ; 

bool
FUNC6(const char *name, const char *contents)
{
    const int fd = FUNC3(name, O_RDONLY);
    FUNC0(fd != -1, "Cannot open %s", name);

    const char *pos = contents;
    ssize_t remaining = FUNC5(contents);

    char buffer[1024];
    ssize_t count;
    while ((count = FUNC4(fd, buffer, sizeof(buffer))) > 0 &&
           count <= remaining) {
        if (FUNC2(pos, buffer, count) != 0) {
            FUNC1(fd);
            return false;
        }
        remaining -= count;
        pos += count;
    }
    FUNC1(fd);
    return count == 0 && remaining == 0;
}