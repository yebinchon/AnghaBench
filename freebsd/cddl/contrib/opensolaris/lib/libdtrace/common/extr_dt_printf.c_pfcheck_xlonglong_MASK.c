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
typedef  int /*<<< orphan*/  dt_pfargv_t ;
typedef  int /*<<< orphan*/  dt_pfargd_t ;
struct TYPE_3__ {int /*<<< orphan*/  dn_type; int /*<<< orphan*/ * dn_ctfp; } ;
typedef  TYPE_1__ dt_node_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;

/* Variables and functions */
 scalar_t__ CTF_K_TYPEDEF ; 
 int DT_TYPE_NAMELEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(dt_pfargv_t *pfv, dt_pfargd_t *pfd, dt_node_t *dnp)
{
	ctf_file_t *ctfp = dnp->dn_ctfp;
	ctf_id_t type = dnp->dn_type;
	char n[DT_TYPE_NAMELEN];

	if (FUNC1(ctfp, FUNC3(ctfp, type), n,
	    sizeof (n)) != NULL && (FUNC4(n, "long long") == 0 ||
	    FUNC4(n, "signed long long") == 0 ||
	    FUNC4(n, "unsigned long long") == 0))
		return (1);

	/*
	 * If the type used for %llx or %llX is not an [unsigned] long long, we
	 * also permit it to be a [u]int64_t or any typedef thereof.  We know
	 * that these typedefs are guaranteed to work with %ll[xX] in either
	 * compilation environment even though they alias to "long" in LP64.
	 */
	while (FUNC0(ctfp, type) == CTF_K_TYPEDEF) {
		if (FUNC1(ctfp, type, n, sizeof (n)) != NULL &&
		    (FUNC4(n, "int64_t") == 0 || FUNC4(n, "uint64_t") == 0))
			return (1);

		type = FUNC2(ctfp, type);
	}

	return (0);
}