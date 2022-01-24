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
struct section {char* buf; size_t sz; int nocopy; int /*<<< orphan*/  name; } ;
struct sec_action {char* string; } ;
struct elfcopy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct elfcopy*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct elfcopy*,int /*<<< orphan*/ ) ; 
 struct sec_action* FUNC3 (struct elfcopy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 char* FUNC6 (struct section*,size_t*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC10(struct elfcopy *ecp, struct section *s)
{
	struct sec_action	*sac;
	size_t			 srcsz, dstsz, p, len;
	char			*b, *c, *d, *src, *end;
	int			 dupe;

	src = FUNC6(s, &srcsz);
	if (src == NULL || srcsz == 0) {
		/* For empty section, we proceed if we need to append. */
		if (!FUNC1(ecp, s->name))
			return;
	}

	/* Allocate buffer needed for new section data. */
	dstsz = srcsz;
	if (FUNC1(ecp, s->name)) {
		sac = FUNC3(ecp, s->name, 0);
		dstsz += FUNC8(sac->string) + 1;
	}
	if ((b = FUNC4(dstsz)) == NULL)
		FUNC0(EXIT_FAILURE, "malloc failed");
	s->buf = b;

	/* Compress section. */
	p = 0;
	if (FUNC2(ecp, s->name)) {
		end = src + srcsz;
		for(c = src; c < end;) {
			len = 0;
			while(c + len < end && c[len] != '\0')
				len++;
			if (c + len == end) {
				/* XXX should we warn here? */
				FUNC9(&b[p], c, len);
				p += len;
				break;
			}
			dupe = 0;
			for (d = b; d < b + p; ) {
				if (FUNC7(d, c) == 0) {
					dupe = 1;
					break;
				}
				d += FUNC8(d) + 1;
			}
			if (!dupe) {
				FUNC9(&b[p], c, len);
				b[p + len] = '\0';
				p += len + 1;
			}
			c += len + 1;
		}
	} else {
		FUNC5(b, src, srcsz);
		p += srcsz;
	}

	/* Append section. */
	if (FUNC1(ecp, s->name)) {
		sac = FUNC3(ecp, s->name, 0);
		len = FUNC8(sac->string);
		FUNC9(&b[p], sac->string, len);
		b[p + len] = '\0';
		p += len + 1;
	}

	s->sz = p;
	s->nocopy = 1;
}