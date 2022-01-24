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
struct gstr {char const* s; size_t len; } ;

/* Variables and functions */
 char const* FUNC0 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int FUNC2 (char const*) ; 

void FUNC3(struct gstr *gs, const char *s)
{
	size_t l;
	if (s) {
		l = FUNC2(gs->s) + FUNC2(s) + 1;
		if (l > gs->len) {
			gs->s   = FUNC0(gs->s, l);
			gs->len = l;
		}
		FUNC1(gs->s, s);
	}
}