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
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 char FUNC2 (char) ; 
 int FUNC3 (char const*,char const*) ; 
 int FUNC4 (char const*,char const*) ; 

__attribute__((used)) static int FUNC5(char const *a, char const *b, int fold_case)
{
     int ai, bi;
     char ca, cb;
     int fractional, result;
     ai = bi = 0;
     while (1) {
	  ca = a[ai]; cb = b[bi];

	  /* skip over leading spaces or zeros */
	  while (FUNC1(ca))
	       ca = a[++ai];

	  while (FUNC1(cb))
	       cb = b[++bi];

	  /* process run of digits */
	  if (FUNC0(ca)  &&  FUNC0(cb)) {
	       fractional = (ca == '0' || cb == '0');

	       if (fractional) {
		    if ((result = FUNC3(a+ai, b+bi)) != 0)
			 return result;
	       } else {
		    if ((result = FUNC4(a+ai, b+bi)) != 0)
			 return result;
	       }
	  }

	  if (!ca && !cb) {
	       /* The strings compare the same.  Perhaps the caller
                  will want to call strcmp to break the tie. */
	       return 0;
	  }

	  if (fold_case) {
	       ca = FUNC2(ca);
	       cb = FUNC2(cb);
	  }
	  
	  if (ca < cb)
	       return -1;
	  else if (ca > cb)
	       return +1;

	  ++ai; ++bi;
     }
}