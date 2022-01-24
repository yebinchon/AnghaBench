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
 long EOF ; 
 long ERR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (long,int*) ; 
 int /*<<< orphan*/  addr_cnt ; 
 int addr_last ; 
 int current_addr ; 
 char* errmsg ; 
 int /*<<< orphan*/  FUNC3 () ; 
 long FUNC4 (int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ ,int) ; 
 int* ibufp ; 
 int /*<<< orphan*/  FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char) ; 
 int second_addr ; 

long
FUNC8(void)
{
	const char *hd;
	long addr = current_addr;
	long n;
	int first = 1;
	int c;

	FUNC1();
	for (hd = ibufp;; first = 0)
		switch (c = *ibufp) {
		case '+':
		case '\t':
		case ' ':
		case '-':
		case '^':
			ibufp++;
			FUNC1();
			if (FUNC6((unsigned char)*ibufp)) {
				FUNC2(n, ibufp);
				addr += (c == '-' || c == '^') ? -n : n;
			} else if (!FUNC7((unsigned char)c))
				addr += (c == '-' || c == '^') ? -1 : 1;
			break;
		case '0': case '1': case '2':
		case '3': case '4': case '5':
		case '6': case '7': case '8': case '9':
			FUNC0();
			FUNC2(addr, ibufp);
			break;
		case '.':
		case '$':
			FUNC0();
			ibufp++;
			addr = (c == '.') ? current_addr : addr_last;
			break;
		case '/':
		case '?':
			FUNC0();
			if ((addr = FUNC5(
			    FUNC3(), c == '/')) < 0)
				return ERR;
			else if (c == *ibufp)
				ibufp++;
			break;
		case '\'':
			FUNC0();
			ibufp++;
			if ((addr = FUNC4(*ibufp++)) < 0)
				return ERR;
			break;
		case '%':
		case ',':
		case ';':
			if (first) {
				ibufp++;
				addr_cnt++;
				second_addr = (c == ';') ? current_addr : 1;
				if ((addr = FUNC8()) < 0)
					addr = addr_last;
				break;
			}
			/* FALLTHROUGH */
		default:
			if (ibufp == hd)
				return EOF;
			else if (addr < 0 || addr_last < addr) {
				errmsg = "invalid address";
				return ERR;
			} else
				return addr;
		}
	/* NOTREACHED */
}