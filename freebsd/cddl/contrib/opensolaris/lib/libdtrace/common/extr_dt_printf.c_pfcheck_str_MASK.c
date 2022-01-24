#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
typedef  int /*<<< orphan*/  dt_pfargv_t ;
typedef  int /*<<< orphan*/  dt_pfargd_t ;
struct TYPE_6__ {int /*<<< orphan*/  dn_type; int /*<<< orphan*/ * dn_ctfp; } ;
typedef  TYPE_1__ dt_node_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
typedef  int /*<<< orphan*/  ctf_encoding_t ;
struct TYPE_7__ {int /*<<< orphan*/  ctr_contents; } ;
typedef  TYPE_2__ ctf_arinfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_ERR ; 
 scalar_t__ CTF_K_ARRAY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(dt_pfargv_t *pfv, dt_pfargd_t *pfd, dt_node_t *dnp)
{
	ctf_file_t *ctfp;
	ctf_encoding_t e;
	ctf_arinfo_t r;
	ctf_id_t base;
	uint_t kind;

	if (FUNC5(dnp))
		return (1);

	ctfp = dnp->dn_ctfp;
	base = FUNC4(ctfp, dnp->dn_type);
	kind = FUNC3(ctfp, base);

	return (kind == CTF_K_ARRAY && FUNC1(ctfp, base, &r) == 0 &&
	    (base = FUNC4(ctfp, r.ctr_contents)) != CTF_ERR &&
	    FUNC2(ctfp, base, &e) == 0 && FUNC0(e));
}