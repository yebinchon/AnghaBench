#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong_t ;
struct TYPE_6__ {size_t cth_strlen; int cth_stroff; } ;
typedef  TYPE_1__ ctf_header_t ;
struct TYPE_7__ {char* cd_ctfdata; scalar_t__ cd_ctflen; } ;
typedef  TYPE_2__ ctf_data_t ;
struct TYPE_8__ {size_t s_strlen; int /*<<< orphan*/  s_strmax; int /*<<< orphan*/  s_nstr; } ;

/* Variables and functions */
 int E_SUCCESS ; 
 scalar_t__ F_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ flags ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__ stats ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(const ctf_header_t *hp, const ctf_data_t *cd)
{
	size_t n, off, len = hp->cth_strlen;
	const char *s = cd->cd_ctfdata + hp->cth_stroff;

	if (flags != F_STATS)
		FUNC2("- String Table ");

	if (hp->cth_stroff >= cd->cd_ctflen)
		FUNC1("file is truncated or cth_stroff is corrupt\n");
	if (hp->cth_stroff + hp->cth_strlen > cd->cd_ctflen)
		FUNC1("file is truncated or cth_strlen is corrupt\n");

	for (off = 0; len != 0; off += n) {
		if (flags != F_STATS) {
			(void) FUNC3("  [%lu] %s\n", (ulong_t)off,
			    s[0] == '\0' ? "\\0" : s);
		}
		n = FUNC4(s) + 1;
		len -= n;
		s += n;

		stats.s_nstr++;
		stats.s_strlen += n;
		stats.s_strmax = FUNC0(stats.s_strmax, n);
	}

	return (E_SUCCESS);
}