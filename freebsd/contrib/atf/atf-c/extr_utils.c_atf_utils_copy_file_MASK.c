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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int FUNC2 (int const,int /*<<< orphan*/ ) ; 
 int FUNC3 (int const,struct stat*) ; 
 int FUNC4 (char const*,int,...) ; 
 int FUNC5 (int const,char*,int) ; 
 int FUNC6 (int const,char*,int) ; 

void
FUNC7(const char *source, const char *destination)
{
    const int input = FUNC4(source, O_RDONLY);
    FUNC0(input != -1, "Failed to open source file during "
                    "copy (%s)", source);

    const int output = FUNC4(destination, O_WRONLY | O_CREAT | O_TRUNC, 0777);
    FUNC0(output != -1, "Failed to open destination file during "
                    "copy (%s)", destination);

    char buffer[1024];
    ssize_t length;
    while ((length = FUNC5(input, buffer, sizeof(buffer))) > 0)
        FUNC0(FUNC6(output, buffer, length) == length,
                        "Failed to write to %s during copy", destination);
    FUNC0(length != -1, "Failed to read from %s during copy", source);

    struct stat sb;
    FUNC0(FUNC3(input, &sb) != -1,
                    "Failed to stat source file %s during copy", source);
    FUNC0(FUNC2(output, sb.st_mode) != -1,
                    "Failed to chmod destination file %s during copy",
                    destination);

    FUNC1(output);
    FUNC1(input);
}