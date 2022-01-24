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
 int NUMCHARLINES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct Buf* FUNC1 (struct Buf*,char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char*,int) ; 
 int FUNC6 (char const*) ; 

struct Buf *FUNC7 (struct Buf *buf, const char* filename, int lineno)
{
    char *dst, *t;
    const char *src;

    t = FUNC2 (FUNC6 ("#line \"\"\n")          +   /* constant parts */
                    2 * FUNC6 (filename)            +   /* filename with possibly all backslashes escaped */
                    NUMCHARLINES                     +   /* line number */
                    1);                                  /* NUL */
    if (!t)
      FUNC4 (FUNC0("Allocation of buffer for line directive failed"));
    for (dst = t + FUNC5 (t, "#line %d \"", lineno), src = filename; *src; *dst++ = *src++)
      if (*src == '\\')   /* escape backslashes */
        *dst++ = '\\';
    *dst++ = '"';
    *dst++ = '\n';
    *dst   = '\0';
    buf = FUNC1 (buf, t);
    FUNC3 (t);
    return buf;
}