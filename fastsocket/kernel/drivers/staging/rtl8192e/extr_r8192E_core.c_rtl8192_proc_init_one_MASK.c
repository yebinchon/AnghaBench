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
struct r8192_priv {int /*<<< orphan*/  dir_dev; } ;
struct proc_dir_entry {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 int S_IXUGO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct proc_dir_entry* FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  proc_get_registers ; 
 int /*<<< orphan*/  proc_get_stats_ap ; 
 int /*<<< orphan*/  proc_get_stats_rx ; 
 int /*<<< orphan*/  proc_get_stats_tx ; 
 int /*<<< orphan*/  rtl8192_proc ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct proc_dir_entry *e;
	struct r8192_priv *priv = (struct r8192_priv *)FUNC3(dev);
	priv->dir_dev = FUNC1(dev->name,
					  S_IFDIR | S_IRUGO | S_IXUGO,
					  rtl8192_proc);
	if (!priv->dir_dev) {
		FUNC0(COMP_ERR, "Unable to initialize /proc/net/rtl8192/%s\n",
		      dev->name);
		return;
	}
	e = FUNC2("stats-rx", S_IFREG | S_IRUGO,
				   priv->dir_dev, proc_get_stats_rx, dev);

	if (!e) {
		FUNC0(COMP_ERR,"Unable to initialize "
		      "/proc/net/rtl8192/%s/stats-rx\n",
		      dev->name);
	}


	e = FUNC2("stats-tx", S_IFREG | S_IRUGO,
				   priv->dir_dev, proc_get_stats_tx, dev);

	if (!e) {
		FUNC0(COMP_ERR, "Unable to initialize "
		      "/proc/net/rtl8192/%s/stats-tx\n",
		      dev->name);
	}

	e = FUNC2("stats-ap", S_IFREG | S_IRUGO,
				   priv->dir_dev, proc_get_stats_ap, dev);

	if (!e) {
		FUNC0(COMP_ERR, "Unable to initialize "
		      "/proc/net/rtl8192/%s/stats-ap\n",
		      dev->name);
	}

	e = FUNC2("registers", S_IFREG | S_IRUGO,
				   priv->dir_dev, proc_get_registers, dev);
	if (!e) {
		FUNC0(COMP_ERR, "Unable to initialize "
		      "/proc/net/rtl8192/%s/registers\n",
		      dev->name);
	}
}