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
typedef  int uint_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int CTF_INT_BOOL ; 
 int CTF_INT_CHAR ; 
 int CTF_INT_SIGNED ; 
 int CTF_INT_VARARGS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static const char *
FUNC2(uint_t encoding)
{
	static char buf[32];

	if (encoding == 0 || (encoding & ~(CTF_INT_SIGNED | CTF_INT_CHAR |
	    CTF_INT_BOOL | CTF_INT_VARARGS)) != 0)
		(void) FUNC0(buf, sizeof (buf), " 0x%x", encoding);
	else {
		buf[0] = '\0';
		if (encoding & CTF_INT_SIGNED)
			(void) FUNC1(buf, " SIGNED");
		if (encoding & CTF_INT_CHAR)
			(void) FUNC1(buf, " CHAR");
		if (encoding & CTF_INT_BOOL)
			(void) FUNC1(buf, " BOOL");
		if (encoding & CTF_INT_VARARGS)
			(void) FUNC1(buf, " VARARGS");
	}

	return (buf + 1);
}