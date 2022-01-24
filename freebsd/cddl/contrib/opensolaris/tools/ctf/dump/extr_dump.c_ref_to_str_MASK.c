#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint_t ;
struct TYPE_5__ {int cth_stroff; size_t cth_strlen; } ;
typedef  TYPE_1__ ctf_header_t ;
struct TYPE_6__ {char* cd_ctfdata; scalar_t__ cd_ctflen; } ;
typedef  TYPE_2__ ctf_data_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ CTF_STRTAB_0 ; 

__attribute__((used)) static const char *
FUNC2(uint_t name, const ctf_header_t *hp, const ctf_data_t *cd)
{
	size_t offset = FUNC0(name);
	const char *s = cd->cd_ctfdata + hp->cth_stroff + offset;

	if (FUNC1(name) != CTF_STRTAB_0)
		return ("<< ??? - name in external strtab >>");

	if (offset >= hp->cth_strlen)
		return ("<< ??? - name exceeds strlab len >>");

	if (hp->cth_stroff + offset >= cd->cd_ctflen)
		return ("<< ??? - file truncated >>");

	if (s[0] == '\0')
		return ("(anon)");

	return (s);
}