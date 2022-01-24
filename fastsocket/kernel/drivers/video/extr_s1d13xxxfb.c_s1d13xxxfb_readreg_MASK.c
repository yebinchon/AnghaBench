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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct s1d13xxxfb_par {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static inline u8
FUNC1(struct s1d13xxxfb_par *par, u16 regno)
{
#if defined(CONFIG_PLAT_M32700UT) || defined(CONFIG_PLAT_OPSPUT) || defined(CONFIG_PLAT_MAPPI3)
	regno=((regno & 1) ? (regno & ~1L) : (regno + 1));
#endif
	return FUNC0(par->regs + regno);
}