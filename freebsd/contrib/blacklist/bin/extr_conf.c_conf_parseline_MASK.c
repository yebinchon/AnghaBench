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
struct conf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  getfamily ; 
 int /*<<< orphan*/  gethostport ; 
 int /*<<< orphan*/  getname ; 
 int /*<<< orphan*/  getnfail ; 
 int /*<<< orphan*/  getproto ; 
 int /*<<< orphan*/  getsecs ; 
 int /*<<< orphan*/  getuid ; 
 int FUNC0 (char const*,size_t,int,struct conf*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct conf*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(const char *f, size_t l, char *p, struct conf *c, bool local)
{
	int e;

	while (*p && FUNC1((unsigned char)*p))
		p++;

	FUNC2(c, 0, sizeof(*c));
	e = FUNC0(f, l, local, c, &p, gethostport);
	if (e) return -1;
	e = FUNC0(f, l, local, c, &p, getproto);
	if (e) return -1;
	e = FUNC0(f, l, local, c, &p, getfamily);
	if (e) return -1;
	e = FUNC0(f, l, local, c, &p, getuid);
	if (e) return -1;
	e = FUNC0(f, l, local, c, &p, getname);
	if (e) return -1;
	e = FUNC0(f, l, local, c, &p, getnfail);
	if (e) return -1;
	e = FUNC0(f, l, local, c, &p, getsecs);
	if (e) return -1;

	return 0;
}