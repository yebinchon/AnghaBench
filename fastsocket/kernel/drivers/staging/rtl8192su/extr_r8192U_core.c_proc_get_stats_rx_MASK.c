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
struct TYPE_2__ {int /*<<< orphan*/  rxurberr; int /*<<< orphan*/  rxstaterr; int /*<<< orphan*/  rxoktotal; } ;
struct r8192_priv {TYPE_1__ stats; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(char *page, char **start,
			  off_t offset, int count,
			  int *eof, void *data)
{
	struct net_device *dev = data;
	struct r8192_priv *priv = (struct r8192_priv *)FUNC0(dev);

	int len = 0;

	len += FUNC1(page + len, count - len,
		"RX packets: %lu\n"
		"RX urb status error: %lu\n"
		"RX invalid urb error: %lu\n",
		priv->stats.rxoktotal,
		priv->stats.rxstaterr,
		priv->stats.rxurberr);

	*eof = 1;
	return len;
}