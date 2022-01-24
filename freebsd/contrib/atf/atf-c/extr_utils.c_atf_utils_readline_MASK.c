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
typedef  int /*<<< orphan*/  ch ;
typedef  int /*<<< orphan*/  atf_error_t ;
typedef  int /*<<< orphan*/  atf_dynstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int const,char*,int) ; 

char *
FUNC8(const int fd)
{
    char ch;
    ssize_t cnt;
    atf_dynstr_t temp;
    atf_error_t error;

    error = FUNC4(&temp);
    FUNC0(!FUNC6(error));

    while ((cnt = FUNC7(fd, &ch, sizeof(ch))) == sizeof(ch) &&
           ch != '\n') {
        error = FUNC1(&temp, "%c", ch);
        FUNC0(!FUNC6(error));
    }
    FUNC0(cnt != -1);

    if (cnt == 0 && FUNC5(&temp) == 0) {
        FUNC2(&temp);
        return NULL;
    } else
        return FUNC3(&temp);
}