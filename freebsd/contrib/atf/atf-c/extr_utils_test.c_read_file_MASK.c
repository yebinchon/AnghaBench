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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int const,void* const,size_t const) ; 

__attribute__((used)) static ssize_t
FUNC5(const char *path, void *const buffer, const size_t buflen)
{
    const int fd = FUNC3(path, O_RDONLY);
    FUNC1(fd != -1, "Cannot open %s", path);
    const ssize_t length = FUNC4(fd, buffer, buflen - 1);
    FUNC2(fd);
    FUNC0(length != -1);
    ((char *)buffer)[length] = '\0';
    return length;
}