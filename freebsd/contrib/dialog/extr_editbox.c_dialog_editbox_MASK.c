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
 int FUNC0 (char const*,char***,int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char***,int*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char***,int*) ; 

int
FUNC3(const char *title, const char *file, int height, int width)
{
    int result;
    char **list;
    int rows;

    FUNC2(file, &list, &rows);
    result = FUNC0(title, &list, &rows, height, width);
    FUNC1(&list, &rows);
    return result;
}