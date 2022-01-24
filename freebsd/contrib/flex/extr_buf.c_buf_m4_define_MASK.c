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
struct Buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct Buf*,char**,int) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char const*,char const*,char const*) ; 
 int FUNC5 (char const*) ; 

struct Buf *FUNC6 (struct Buf *buf, const char* def, const char* val)
{
    const char * fmt = "m4_define( [[%s]], [[%s]])m4_dnl\n";
    char * str;
    size_t strsz;

    val = val?val:"";
    str = (char*)FUNC2(strsz = FUNC5(fmt) + FUNC5(def) + FUNC5(val) + 2);
    if (!str)
        FUNC3 (FUNC0("Allocation of buffer for m4 def failed"));

    FUNC4(str, strsz, fmt, def, val);
    FUNC1(buf, &str, 1);
    return buf;
}