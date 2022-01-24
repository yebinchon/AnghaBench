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
typedef  size_t u16 ;
struct r8192_priv {size_t** EfuseMap; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 size_t EFUSE_MODIFY_MAP ; 
 struct r8192_priv* FUNC0 (struct net_device*) ; 

__attribute__((used)) static	void
FUNC1(struct net_device*	dev,	u16 Offset,	u16 *Value)
{
	struct r8192_priv *priv = FUNC0(dev);

	*Value = priv->EfuseMap[EFUSE_MODIFY_MAP][Offset];
	*Value |= priv->EfuseMap[EFUSE_MODIFY_MAP][Offset+1]<<8;

}