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
struct mstring {char* base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mstring*) ; 
 int /*<<< orphan*/  FUNC1 (struct mstring*,int /*<<< orphan*/ ) ; 

char *
FUNC2(struct mstring *s)
{
    char *r = 0;
    if (s)
    {
	FUNC1(s, 0);
	r = s->base;
	FUNC0(s);
    }
    return r;
}