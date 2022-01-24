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
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 char* dsa_driver_version ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC1(struct net_device *dev,
				  struct ethtool_drvinfo *drvinfo)
{
	FUNC0(drvinfo->driver, "dsa", 32);
	FUNC0(drvinfo->version, dsa_driver_version, 32);
	FUNC0(drvinfo->fw_version, "N/A", 32);
	FUNC0(drvinfo->bus_info, "platform", 32);
}