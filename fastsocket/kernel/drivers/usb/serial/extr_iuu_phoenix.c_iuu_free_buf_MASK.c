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
struct iuu_private {int /*<<< orphan*/  writebuf; int /*<<< orphan*/  dbgbuf; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct iuu_private *priv)
{
	FUNC0(priv->buf);
	FUNC0(priv->dbgbuf);
	FUNC0(priv->writebuf);
}