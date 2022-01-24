#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct ssp_device* ssp; } ;
struct ssp_priv {TYPE_1__ dev; } ;
struct ssp_device {int dummy; } ;
struct snd_soc_dai {struct ssp_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSCR1 ; 
 int /*<<< orphan*/  SSCR1_TTE ; 
 int /*<<< orphan*/  FUNC0 (struct ssp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ssp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *cpu_dai,
	int tristate)
{
	struct ssp_priv *priv = cpu_dai->private_data;
	struct ssp_device *ssp = priv->dev.ssp;
	u32 sscr1;

	sscr1 = FUNC0(ssp, SSCR1);
	if (tristate)
		sscr1 &= ~SSCR1_TTE;
	else
		sscr1 |= SSCR1_TTE;
	FUNC1(ssp, SSCR1, sscr1);

	return 0;
}