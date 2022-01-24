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
struct vc_data {int vc_size_row; scalar_t__ vc_origin; } ;
struct display {int dummy; } ;

/* Variables and functions */
 unsigned short* FUNC0 (unsigned short*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,unsigned short*,int,int,int) ; 
 unsigned short FUNC3 (unsigned short*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned short,unsigned short*) ; 

__attribute__((used)) static void FUNC5(struct vc_data *vc, struct display *p,
			 int line, int count, int offset)
{
	unsigned short *d = (unsigned short *)
	    (vc->vc_origin + vc->vc_size_row * line);
	unsigned short *s = d + offset;

	while (count--) {
		unsigned short *start = s;
		unsigned short *le = FUNC0(s, 1);
		unsigned short c;
		int x = 0;
		unsigned short attr = 1;

		do {
			c = FUNC3(s);
			if (attr != (c & 0xff00)) {
				attr = c & 0xff00;
				if (s > start) {
					FUNC2(vc, start, s - start,
						    line, x);
					x += s - start;
					start = s;
				}
			}
			if (c == FUNC3(d)) {
				if (s > start) {
					FUNC2(vc, start, s - start,
						     line, x);
					x += s - start + 1;
					start = s + 1;
				} else {
					x++;
					start++;
				}
			}
			FUNC4(c, d);
			FUNC1();
			s++;
			d++;
		} while (s < le);
		if (s > start)
			FUNC2(vc, start, s - start, line, x);
		FUNC1();
		if (offset > 0)
			line++;
		else {
			line--;
			/* NOTE: We subtract two lines from these pointers */
			s -= vc->vc_size_row;
			d -= vc->vc_size_row;
		}
	}
}