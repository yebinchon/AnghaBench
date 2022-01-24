#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  n ;
struct TYPE_3__ {scalar_t__ dtt_type; int /*<<< orphan*/ * dtt_ctfp; } ;
typedef  TYPE_1__ dtrace_typeinfo_t ;
typedef  int /*<<< orphan*/  ctf_membinfo_t ;
typedef  scalar_t__ ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;

/* Variables and functions */
 scalar_t__ CTF_ERR ; 
 scalar_t__ CTF_K_FORWARD ; 
 int DT_TYPE_NAMELEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (char*,TYPE_1__*) ; 

__attribute__((used)) static ctf_file_t *
FUNC5(ctf_file_t *fp, ctf_id_t type, const char *s, ctf_membinfo_t *mp)
{
	while (FUNC1(fp, type) == CTF_K_FORWARD) {
		char n[DT_TYPE_NAMELEN];
		dtrace_typeinfo_t dtt;

		if (FUNC2(fp, type, n, sizeof (n)) == NULL ||
		    FUNC4(n, &dtt) == -1 || (
		    dtt.dtt_ctfp == fp && dtt.dtt_type == type))
			break; /* unable to improve our position */

		fp = dtt.dtt_ctfp;
		type = FUNC3(fp, dtt.dtt_type);
	}

	if (FUNC0(fp, type, s, mp) == CTF_ERR)
		return (NULL); /* ctf_errno is set for us */

	return (fp);
}