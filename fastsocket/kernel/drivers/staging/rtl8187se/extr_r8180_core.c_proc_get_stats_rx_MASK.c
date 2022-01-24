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
struct TYPE_2__ {int /*<<< orphan*/  rxicverr; int /*<<< orphan*/  rxcrcerrmax; int /*<<< orphan*/  rxcrcerrmid; int /*<<< orphan*/  rxcrcerrmin; int /*<<< orphan*/  rxerr; int /*<<< orphan*/  rxint; } ;
struct r8180_priv {TYPE_1__ stats; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(char *page, char **start,
			  off_t offset, int count,
			  int *eof, void *data)
{
	struct net_device *dev = data;
	struct r8180_priv *priv = (struct r8180_priv *)FUNC0(dev);

	int len = 0;

	len += FUNC1(page + len, count - len,
		"RX OK: %lu\n"
		"RX Retry: %lu\n"
		"RX CRC Error(0-500): %lu\n"
		"RX CRC Error(500-1000): %lu\n"
		"RX CRC Error(>1000): %lu\n"
		"RX ICV Error: %lu\n",
		priv->stats.rxint,
		priv->stats.rxerr,
		priv->stats.rxcrcerrmin,
		priv->stats.rxcrcerrmid,
		priv->stats.rxcrcerrmax,
		priv->stats.rxicverr
		);

	*eof = 1;
	return len;
}