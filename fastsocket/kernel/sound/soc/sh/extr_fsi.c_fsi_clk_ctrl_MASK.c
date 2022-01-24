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
typedef  int u32 ;
struct fsi_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_RST ; 
 scalar_t__ FUNC0 (struct fsi_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct fsi_priv *fsi, int enable)
{
	u32 val = FUNC0(fsi) ? (1 << 0) : (1 << 4);

	if (enable)
		FUNC1(CLK_RST, val, val);
	else
		FUNC1(CLK_RST, val, 0);
}