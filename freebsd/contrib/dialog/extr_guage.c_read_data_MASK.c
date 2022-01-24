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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t MY_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(char *buffer, FILE *fp)
{
    int result;

    if (FUNC2(fp)) {
	result = 0;
    } else if (FUNC3(buffer, MY_LEN, fp) != 0) {
	FUNC0(("read_data:%s", buffer));
	buffer[MY_LEN] = '\0';
	FUNC1(buffer);
	result = 1;
    } else {
	result = -1;
    }
    return result;
}