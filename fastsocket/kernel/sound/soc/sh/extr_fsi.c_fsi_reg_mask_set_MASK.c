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
typedef  scalar_t__ u32 ;
struct fsi_priv {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ REG_END ; 
 int FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct fsi_priv *fsi, u32 reg, u32 mask, u32 data)
{
	if (reg > REG_END)
		return -1;

	return FUNC0((u32)(fsi->base + reg), mask, data);
}