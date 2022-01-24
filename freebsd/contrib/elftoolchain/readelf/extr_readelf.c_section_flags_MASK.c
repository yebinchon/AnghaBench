#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct section {int flags; } ;
struct readelf {scalar_t__ ec; int options; } ;
struct TYPE_2__ {char* ln; int value; char sn; } ;

/* Variables and functions */
 int BUF_SZ ; 
 scalar_t__ ELFCLASS32 ; 
 int RE_T ; 
 TYPE_1__* section_flag ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,...) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2(struct readelf *re, struct section *s)
{
#define BUF_SZ 256
	static char	buf[BUF_SZ];
	int		i, p, nb;

	p = 0;
	nb = re->ec == ELFCLASS32 ? 8 : 16;
	if (re->options & RE_T) {
		FUNC0(buf, BUF_SZ, "[%*.*jx]: ", nb, nb,
		    (uintmax_t)s->flags);
		p += nb + 4;
	}
	for (i = 0; section_flag[i].ln != NULL; i++) {
		if ((s->flags & section_flag[i].value) == 0)
			continue;
		if (re->options & RE_T) {
			FUNC0(&buf[p], BUF_SZ - p, "%s, ",
			    section_flag[i].ln);
			p += FUNC1(section_flag[i].ln) + 2;
		} else
			buf[p++] = section_flag[i].sn;
	}
	if (re->options & RE_T && p > nb + 4)
		p -= 2;
	buf[p] = '\0';

	return (buf);
}