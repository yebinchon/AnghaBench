#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct lec_priv {int is_trdev; int itfnum; int maximum_unknown_frame_count; int max_unknown_frame_time; int vcc_timeout_period; int max_retry_count; int aging_time; int forward_delay_time; int arp_response_time; int flush_timeout; int path_switching_delay; scalar_t__ topology_change; struct atm_vcc* lecd; } ;
struct atm_vcc {int /*<<< orphan*/  flags; TYPE_1__* proto_data; int /*<<< orphan*/ * dev; } ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_META ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int EADDRINUSE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int HZ ; 
 int IFF_UP ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int MAX_LEC_ITF ; 
 int NUM_TR_DEVS ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 TYPE_1__** dev_lec ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct lec_priv*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  lecatm_dev ; 
 struct lec_priv* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct atm_vcc *vcc, int arg)
{
	int i;
	struct lec_priv *priv;

	if (arg < 0)
		i = 0;
	else
		i = arg;
#ifdef CONFIG_TR
	if (arg >= MAX_LEC_ITF)
		return -EINVAL;
#else				/* Reserve the top NUM_TR_DEVS for TR */
	if (arg >= (MAX_LEC_ITF - NUM_TR_DEVS))
		return -EINVAL;
#endif
	if (!dev_lec[i]) {
		int is_trdev, size;

		is_trdev = 0;
		if (i >= (MAX_LEC_ITF - NUM_TR_DEVS))
			is_trdev = 1;

		size = sizeof(struct lec_priv);
#ifdef CONFIG_TR
		if (is_trdev)
			dev_lec[i] = alloc_trdev(size);
		else
#endif
			dev_lec[i] = FUNC1(size);
		if (!dev_lec[i])
			return -ENOMEM;
		FUNC11(dev_lec[i]->name, IFNAMSIZ, "lec%d", i);
		if (FUNC8(dev_lec[i])) {
			FUNC3(dev_lec[i]);
			return -EINVAL;
		}

		priv = FUNC6(dev_lec[i]);
		priv->is_trdev = is_trdev;
		FUNC5(dev_lec[i]);
	} else {
		priv = FUNC6(dev_lec[i]);
		if (priv->lecd)
			return -EADDRINUSE;
	}
	FUNC4(priv);
	priv->itfnum = i;	/* LANE2 addition */
	priv->lecd = vcc;
	vcc->dev = &lecatm_dev;
	FUNC12(FUNC10(vcc));

	vcc->proto_data = dev_lec[i];
	FUNC9(ATM_VF_META, &vcc->flags);
	FUNC9(ATM_VF_READY, &vcc->flags);

	/* Set default values to these variables */
	priv->maximum_unknown_frame_count = 1;
	priv->max_unknown_frame_time = (1 * HZ);
	priv->vcc_timeout_period = (1200 * HZ);
	priv->max_retry_count = 1;
	priv->aging_time = (300 * HZ);
	priv->forward_delay_time = (15 * HZ);
	priv->topology_change = 0;
	priv->arp_response_time = (1 * HZ);
	priv->flush_timeout = (4 * HZ);
	priv->path_switching_delay = (6 * HZ);

	if (dev_lec[i]->flags & IFF_UP) {
		FUNC7(dev_lec[i]);
	}
	FUNC0(THIS_MODULE);
	return i;
}