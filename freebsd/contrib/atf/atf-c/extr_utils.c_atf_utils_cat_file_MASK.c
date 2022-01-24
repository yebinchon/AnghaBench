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
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 size_t FUNC4 (int const,char*,int) ; 
 char* FUNC5 (char*,char) ; 

void
FUNC6(const char *name, const char *prefix)
{
    const int fd = FUNC2(name, O_RDONLY);
    FUNC1(fd != -1, "Cannot open %s", name);

    char buffer[1024];
    ssize_t count;
    bool continued = false;
    while ((count = FUNC4(fd, buffer, sizeof(buffer) - 1)) > 0) {
        buffer[count] = '\0';

        if (!continued)
            FUNC3("%s", prefix);

        char *iter = buffer;
        char *end;
        while ((end = FUNC5(iter, '\n')) != NULL) {
            *end = '\0';
            FUNC3("%s\n", iter);

            iter = end + 1;
            if (iter != buffer + count)
                FUNC3("%s", prefix);
            else
                continued = false;
        }
        if (iter < buffer + count) {
            FUNC3("%s", iter);
            continued = true;
        }
    }
    FUNC0(count == 0);
}