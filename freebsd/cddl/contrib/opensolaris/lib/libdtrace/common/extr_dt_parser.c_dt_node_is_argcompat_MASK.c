#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int dn_flags; int /*<<< orphan*/  dn_type; int /*<<< orphan*/ * dn_ctfp; } ;
typedef  TYPE_1__ dt_node_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;

/* Variables and functions */
#define  CTF_K_FUNCTION 130 
#define  CTF_K_STRUCT 129 
#define  CTF_K_UNION 128 
 int DT_NF_COOKED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__ const*) ; 
 int FUNC5 (TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__ const*) ; 
 scalar_t__ FUNC7 (TYPE_1__ const*) ; 
 scalar_t__ FUNC8 (TYPE_1__ const*) ; 
 scalar_t__ FUNC9 (TYPE_1__ const*) ; 

int
FUNC10(const dt_node_t *lp, const dt_node_t *rp)
{
	ctf_file_t *lfp = lp->dn_ctfp;
	ctf_file_t *rfp = rp->dn_ctfp;

	FUNC0(lp->dn_flags & DT_NF_COOKED);
	FUNC0(rp->dn_flags & DT_NF_COOKED);

	if (FUNC4(lp) && FUNC4(rp))
		return (1); /* integer types are compatible */

	if (FUNC7(lp) && FUNC7(rp))
		return (1); /* string types are compatible */

	if (FUNC6(lp) && FUNC6(rp))
		return (1); /* stack types are compatible */

	if (FUNC8(lp) && FUNC8(rp))
		return (1); /* symaddr types are compatible */

	if (FUNC9(lp) && FUNC9(rp))
		return (1); /* usymaddr types are compatible */

	switch (FUNC2(lfp, FUNC3(lfp, lp->dn_type))) {
	case CTF_K_FUNCTION:
	case CTF_K_STRUCT:
	case CTF_K_UNION:
		return (FUNC1(lfp, lp->dn_type, rfp, rp->dn_type));
	default:
		return (FUNC5(lp, rp, NULL, NULL));
	}
}