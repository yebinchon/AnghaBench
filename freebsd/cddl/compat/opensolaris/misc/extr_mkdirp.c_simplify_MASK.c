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
typedef  char wchar_t ;

/* Variables and functions */
 char* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t FUNC2 (char*,char*,size_t) ; 
 char* FUNC3 (char const*) ; 
 size_t FUNC4 (char*) ; 
 size_t FUNC5 (char*,char*,size_t) ; 

__attribute__((used)) static char *
FUNC6(const char *str)
{
	int i;
	size_t mbPathlen;	/* length of multi-byte path */
	size_t wcPathlen;	/* length of wide-character path */
	wchar_t *wptr;		/* scratch pointer */
	wchar_t *wcPath;	/* wide-character version of the path */
	char *mbPath;		/* The copy fo the path to be returned */

	/*
	 *  bail out if there is nothing there.
	 */

	if (!str)
	    return (NULL);

	/*
	 *  Get a copy of the argument.
	 */

	if ((mbPath = FUNC3(str)) == NULL) {
		return (NULL);
	}

	/*
	 *  convert the multi-byte version of the path to a
	 *  wide-character rendering, for doing our figuring.
	 */

	mbPathlen = FUNC4(mbPath);

	if ((wcPath = FUNC0(sizeof (wchar_t), mbPathlen+1)) == NULL) {
		FUNC1(mbPath);
		return (NULL);
	}

	if ((wcPathlen = FUNC2(wcPath, mbPath, mbPathlen)) == (size_t)-1) {
		FUNC1(mbPath);
		FUNC1(wcPath);
		return (NULL);
	}

	/*
	 *  remove duplicate slashes first ("//../" -> "/")
	 */

	for (wptr = wcPath, i = 0; i < wcPathlen; i++) {
		*wptr++ = wcPath[i];

		if (wcPath[i] == '/') {
			i++;

			while (wcPath[i] == '/') {
				i++;
			}

			i--;
		}
	}

	*wptr = '\0';

	/*
	 *  now convert back to the multi-byte format.
	 */

	if (FUNC5(mbPath, wcPath, mbPathlen) == (size_t)-1) {
		FUNC1(mbPath);
		FUNC1(wcPath);
		return (NULL);
	}

	FUNC1(wcPath);
	return (mbPath);
}