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
typedef  int wchar_t ;
struct nls_table {int (* char2uni ) (char const*,int,int*) ;} ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int,int*) ; 

int
FUNC3(__le16 *to, const char *from, int len,
	      const struct nls_table *codepage)
{
	int charlen;
	int i;
	wchar_t wchar_to; /* needed to quiet sparse */

	for (i = 0; len && *from; i++, from += charlen, len -= charlen) {
		charlen = codepage->char2uni(from, len, &wchar_to);
		if (charlen < 1) {
			FUNC0(1, "strtoUCS: char2uni of 0x%x returned %d",
				*from, charlen);
			/* A question mark */
			wchar_to = 0x003f;
			charlen = 1;
		}
		FUNC1(wchar_to, &to[i]);
	}

	FUNC1(0, &to[i]);
	return i;
}