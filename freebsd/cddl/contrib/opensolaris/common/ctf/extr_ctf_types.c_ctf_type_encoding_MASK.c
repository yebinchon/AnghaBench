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
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  ctt_info; } ;
typedef  TYPE_1__ ctf_type_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
struct TYPE_7__ {int /*<<< orphan*/  cte_bits; int /*<<< orphan*/  cte_offset; int /*<<< orphan*/  cte_format; } ;
typedef  TYPE_2__ ctf_encoding_t ;

/* Variables and functions */
 int CTF_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  CTF_K_FLOAT 129 
#define  CTF_K_INTEGER 128 
 int /*<<< orphan*/  ECTF_NOTINTFP ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC10(ctf_file_t *fp, ctf_id_t type, ctf_encoding_t *ep)
{
	ctf_file_t *ofp = fp;
	const ctf_type_t *tp;
	ssize_t increment;
	uint_t data;

	if ((tp = FUNC8(&fp, type)) == NULL)
		return (CTF_ERR); /* errno is set for us */

	(void) FUNC7(fp, tp, NULL, &increment);

	switch (FUNC6(fp, tp->ctt_info)) {
	case CTF_K_INTEGER:
		data = *(const uint_t *)((uintptr_t)tp + increment);
		ep->cte_format = FUNC4(data);
		ep->cte_offset = FUNC5(data);
		ep->cte_bits = FUNC3(data);
		break;
	case CTF_K_FLOAT:
		data = *(const uint_t *)((uintptr_t)tp + increment);
		ep->cte_format = FUNC1(data);
		ep->cte_offset = FUNC2(data);
		ep->cte_bits = FUNC0(data);
		break;
	default:
		return (FUNC9(ofp, ECTF_NOTINTFP));
	}

	return (0);
}