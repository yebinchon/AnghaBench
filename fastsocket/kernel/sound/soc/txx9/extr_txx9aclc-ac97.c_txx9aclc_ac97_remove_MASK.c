#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct txx9aclc_plat_drvdata {scalar_t__ base; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ ACCTLDIS ; 
 int /*<<< orphan*/  ACCTL_ENLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct txx9aclc_plat_drvdata* FUNC1 (struct platform_device*) ; 
 struct platform_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * txx9aclc_soc_dev ; 

__attribute__((used)) static void FUNC3(struct platform_device *pdev,
				 struct snd_soc_dai *dai)
{
	struct platform_device *aclc_pdev = FUNC2(dai->dev);
	struct txx9aclc_plat_drvdata *drvdata = FUNC1(aclc_pdev);

	/* disable AC-link */
	FUNC0(ACCTL_ENLINK, drvdata->base + ACCTLDIS);
	txx9aclc_soc_dev = NULL;
}