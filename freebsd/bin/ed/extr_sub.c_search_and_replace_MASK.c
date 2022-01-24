#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* t; } ;
typedef  TYPE_1__ undo_t ;
typedef  int /*<<< orphan*/  pattern_t ;
typedef  int /*<<< orphan*/  line_t ;

/* Variables and functions */
 int ERR ; 
 int GLB ; 
 int GLS ; 
 int GNP ; 
 int GPR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  UADD ; 
 long current_addr ; 
 scalar_t__ FUNC2 (long,long) ; 
 scalar_t__ FUNC3 (long,long,int) ; 
 char* errmsg ; 
 int first_addr ; 
 void* FUNC4 (long) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,long,long) ; 
 char* FUNC6 (char const*) ; 
 char* rbuf ; 
 int second_addr ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

int
FUNC8(pattern_t *pat, int gflag, int kth)
{
	undo_t *up;
	const char *txt;
	const char *eot;
	long lc;
	long xa = current_addr;
	int nsubs = 0;
	line_t *lp;
	int len;

	current_addr = first_addr - 1;
	for (lc = 0; lc <= second_addr - first_addr; lc++) {
		lp = FUNC4(++current_addr);
		if ((len = FUNC7(pat, lp, gflag, kth)) < 0)
			return ERR;
		else if (len) {
			up = NULL;
			if (FUNC2(current_addr, current_addr) < 0)
				return ERR;
			txt = rbuf;
			eot = rbuf + len;
			FUNC1();
			do {
				if ((txt = FUNC6(txt)) == NULL) {
					FUNC0();
					return ERR;
				} else if (up)
					up->t = FUNC4(current_addr);
				else if ((up = FUNC5(UADD,
				    current_addr, current_addr)) == NULL) {
					FUNC0();
					return ERR;
				}
			} while (txt != eot);
			FUNC0();
			nsubs++;
			xa = current_addr;
		}
	}
	current_addr = xa;
	if  (nsubs == 0 && !(gflag & GLB)) {
		errmsg = "no match";
		return ERR;
	} else if ((gflag & (GPR | GLS | GNP)) &&
	    FUNC3(current_addr, current_addr, gflag) < 0)
		return ERR;
	return 0;
}