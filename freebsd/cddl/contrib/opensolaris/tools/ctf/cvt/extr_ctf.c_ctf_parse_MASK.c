#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int t_id; } ;
typedef  TYPE_1__ tdesc_t ;
struct TYPE_21__ {int td_nextid; int /*<<< orphan*/  td_parlabel; } ;
typedef  TYPE_2__ tdata_t ;
typedef  int /*<<< orphan*/  symit_data_t ;
struct TYPE_22__ {scalar_t__ cth_parlabel; scalar_t__ cth_stroff; } ;
typedef  TYPE_3__ ctf_header_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*,TYPE_1__**,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*,TYPE_1__**,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*,TYPE_1__**,int,scalar_t__,int) ; 
 TYPE_2__* FUNC6 () ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static tdata_t *
FUNC9(ctf_header_t *h, caddr_t buf, symit_data_t *si, char *label)
{
	tdata_t *td = FUNC6();
	tdesc_t **tdarr;
	int ntypes = FUNC0(h, buf);
	int idx, i;

	/* shudder */
	tdarr = FUNC7(sizeof (tdesc_t *) * (ntypes + 1));
	tdarr[0] = NULL;
	for (i = 1; i <= ntypes; i++) {
		tdarr[i] = FUNC7(sizeof (tdesc_t));
		tdarr[i]->t_id = i;
	}

	td->td_parlabel = FUNC8(buf + h->cth_stroff + h->cth_parlabel);

	/* we have the technology - we can rebuild them */
	idx = FUNC3(h, td, buf, label);

	FUNC4(h, td, tdarr, ntypes + 1, buf, si);
	FUNC2(h, td, tdarr, ntypes + 1, buf, si);
	FUNC5(h, td, tdarr, ntypes + 1, buf, idx);

	FUNC1(tdarr);

	td->td_nextid = ntypes + 1;

	return (td);
}