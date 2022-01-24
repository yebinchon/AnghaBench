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
typedef  int uint_t ;
struct TYPE_5__ {int /*<<< orphan*/  ctt_name; } ;
typedef  TYPE_1__ ctf_type_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
typedef  int /*<<< orphan*/  ctf_encoding_t ;
struct TYPE_6__ {int /*<<< orphan*/  ctr_index; int /*<<< orphan*/  ctr_contents; int /*<<< orphan*/  ctr_nelems; } ;
typedef  TYPE_2__ ctf_arinfo_t ;

/* Variables and functions */
#define  CTF_K_ARRAY 135 
#define  CTF_K_ENUM 134 
#define  CTF_K_FLOAT 133 
#define  CTF_K_FORWARD 132 
#define  CTF_K_INTEGER 131 
#define  CTF_K_POINTER 130 
#define  CTF_K_STRUCT 129 
#define  CTF_K_UNION 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11(ctf_file_t *lfp, ctf_id_t ltype,
    ctf_file_t *rfp, ctf_id_t rtype)
{
	const ctf_type_t *ltp, *rtp;
	ctf_encoding_t le, re;
	ctf_arinfo_t la, ra;
	uint_t lkind, rkind;

	if (FUNC4(lfp, ltype, rfp, rtype) == 0)
		return (1);

	ltype = FUNC8(lfp, ltype);
	lkind = FUNC6(lfp, ltype);

	rtype = FUNC8(rfp, rtype);
	rkind = FUNC6(rfp, rtype);

	if (lkind != rkind ||
	    (ltp = FUNC2(&lfp, ltype)) == NULL ||
	    (rtp = FUNC2(&rfp, rtype)) == NULL ||
	    FUNC10(FUNC3(lfp, ltp->ctt_name),
	    FUNC3(rfp, rtp->ctt_name)) != 0)
		return (0);

	switch (lkind) {
	case CTF_K_INTEGER:
	case CTF_K_FLOAT:
		return (FUNC5(lfp, ltype, &le) == 0 &&
		    FUNC5(rfp, rtype, &re) == 0 &&
		    FUNC0(&le, &re, sizeof (ctf_encoding_t)) == 0);
	case CTF_K_POINTER:
		return (FUNC11(lfp, FUNC7(lfp, ltype),
		    rfp, FUNC7(rfp, rtype)));
	case CTF_K_ARRAY:
		return (FUNC1(lfp, ltype, &la) == 0 &&
		    FUNC1(rfp, rtype, &ra) == 0 &&
		    la.ctr_nelems == ra.ctr_nelems && FUNC11(
		    lfp, la.ctr_contents, rfp, ra.ctr_contents) &&
		    FUNC11(lfp, la.ctr_index, rfp, ra.ctr_index));
	case CTF_K_STRUCT:
	case CTF_K_UNION:
		return (FUNC9(lfp, ltype) == FUNC9(rfp, rtype));
	case CTF_K_ENUM:
	case CTF_K_FORWARD:
		return (1); /* no other checks required for these type kinds */
	default:
		return (0); /* should not get here since we did a resolve */
	}
}