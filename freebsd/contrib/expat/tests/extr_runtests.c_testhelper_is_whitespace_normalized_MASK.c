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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(void)
{
    FUNC1(FUNC2(FUNC0("abc"), 0));
    FUNC1(FUNC2(FUNC0("abc"), 1));
    FUNC1(FUNC2(FUNC0("abc def ghi"), 0));
    FUNC1(FUNC2(FUNC0("abc def ghi"), 1));
    FUNC1(!FUNC2(FUNC0(" abc def ghi"), 0));
    FUNC1(FUNC2(FUNC0(" abc def ghi"), 1));
    FUNC1(!FUNC2(FUNC0("abc  def ghi"), 0));
    FUNC1(FUNC2(FUNC0("abc  def ghi"), 1));
    FUNC1(!FUNC2(FUNC0("abc def ghi "), 0));
    FUNC1(FUNC2(FUNC0("abc def ghi "), 1));
    FUNC1(!FUNC2(FUNC0(" "), 0));
    FUNC1(FUNC2(FUNC0(" "), 1));
    FUNC1(!FUNC2(FUNC0("\t"), 0));
    FUNC1(!FUNC2(FUNC0("\t"), 1));
    FUNC1(!FUNC2(FUNC0("\n"), 0));
    FUNC1(!FUNC2(FUNC0("\n"), 1));
    FUNC1(!FUNC2(FUNC0("\r"), 0));
    FUNC1(!FUNC2(FUNC0("\r"), 1));
    FUNC1(!FUNC2(FUNC0("abc\t def"), 1));
}