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
typedef  scalar_t__ XML_Char ;

/* Variables and functions */
 scalar_t__ const FUNC0 (char) ; 

__attribute__((used)) static int
FUNC1(const XML_Char *s, int is_cdata)
{
    int blanks = 0;
    int at_start = 1;
    while (*s) {
        if (*s == FUNC0(' '))
            ++blanks;
        else if (*s == FUNC0('\t') || *s == FUNC0('\n') || *s == FUNC0('\r'))
            return 0;
        else {
            if (at_start) {
                at_start = 0;
                if (blanks && !is_cdata)
                    /* illegal leading blanks */
                    return 0;
            }
            else if (blanks > 1 && !is_cdata)
                return 0;
            blanks = 0;
        }
        ++s;
    }
    if (blanks && !is_cdata)
        return 0;
    return 1;
}