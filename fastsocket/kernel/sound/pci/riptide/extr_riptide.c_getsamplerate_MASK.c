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
union cmdret {unsigned int* retwords; } ;
struct cmdif {int dummy; } ;

/* Variables and functions */
 union cmdret CMDRET_ZERO ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct cmdif*,unsigned char,union cmdret*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char,unsigned char,...) ; 

__attribute__((used)) static int
FUNC2(struct cmdif *cif, unsigned char *intdec, unsigned int *rate)
{
	unsigned char *s;
	unsigned int p[2] = { 0, 0 };
	int i;
	union cmdret rptr = CMDRET_ZERO;

	s = intdec;
	for (i = 0; i < 2; i++) {
		if (*s != 0xff) {
			if (FUNC0(cif, *s, &rptr) &&
			    FUNC0(cif, *s, &rptr))
				return -EIO;
			p[i] += rptr.retwords[1];
			p[i] *= rptr.retwords[2];
			p[i] += rptr.retwords[3];
			p[i] /= 65536;
		}
		s++;
	}
	if (p[0]) {
		if (p[1] != p[0])
			FUNC1("rates differ %d %d\n", p[0], p[1]);
		*rate = (unsigned int)p[0];
	} else
		*rate = (unsigned int)p[1];
	FUNC1("getsampleformat %d %d %d\n", intdec[0], intdec[1], *rate);
	return 0;
}