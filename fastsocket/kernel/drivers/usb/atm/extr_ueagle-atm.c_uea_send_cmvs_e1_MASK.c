#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  firmid; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct uea_softc {TYPE_2__ stats; } ;
struct uea_cmvs_v2 {int /*<<< orphan*/  data; int /*<<< orphan*/  offset; int /*<<< orphan*/  address; } ;
struct uea_cmvs_v1 {int /*<<< orphan*/  data; int /*<<< orphan*/  offset; int /*<<< orphan*/  address; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int E1_SA_CNTL ; 
 int /*<<< orphan*/  E1_SA_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct uea_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 
 int FUNC4 (struct uea_softc*,void**,struct firmware const**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (struct uea_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (struct uea_softc*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct uea_softc *sc)
{
	int i, ret, len;
	void *cmvs_ptr;
	const struct firmware *cmvs_fw;
	int ver = 1; // we can handle v1 cmv firmware version;

	/* Enter in R-IDLE (cmv) until instructed otherwise */
	ret = FUNC10(sc, E1_SA_CNTL, 0, 1);
	if (ret < 0)
		return ret;

	/* Dump firmware version */
	ret = FUNC7(sc, E1_SA_INFO, 10, &sc->stats.phy.firmid);
	if (ret < 0)
		return ret;
	FUNC6(FUNC0(sc), "ATU-R firmware version : %x\n",
			sc->stats.phy.firmid);

	/* get options */
 	ret = len = FUNC4(sc, &cmvs_ptr, &cmvs_fw, &ver);
	if (ret < 0)
		return ret;

	/* send options */
	if (ver == 1) {
		struct uea_cmvs_v1 *cmvs_v1 = cmvs_ptr;

		FUNC9(FUNC0(sc), "use deprecated cmvs version, "
			"please update your firmware\n");

		for (i = 0; i < len; i++) {
			ret = FUNC10(sc, FUNC2(&cmvs_v1[i].address),
						FUNC1(&cmvs_v1[i].offset),
						FUNC2(&cmvs_v1[i].data));
			if (ret < 0)
				goto out;
		}
	} else if (ver == 2) {
		struct uea_cmvs_v2 *cmvs_v2 = cmvs_ptr;

		for (i = 0; i < len; i++) {
			ret = FUNC10(sc, FUNC2(&cmvs_v2[i].address),
						(u16) FUNC2(&cmvs_v2[i].offset),
						FUNC2(&cmvs_v2[i].data));
			if (ret < 0)
				goto out;
		}
	} else {
		/* This realy should not happen */
		FUNC5(FUNC0(sc), "bad cmvs version %d\n", ver);
		goto out;
	}

	/* Enter in R-ACT-REQ */
	ret = FUNC10(sc, E1_SA_CNTL, 0, 2);
	FUNC8(FUNC0(sc), "Entering in R-ACT-REQ state\n");
	FUNC6(FUNC0(sc), "modem started, waiting synchronization...\n");
out:
	FUNC3(cmvs_fw);
	return ret;
}