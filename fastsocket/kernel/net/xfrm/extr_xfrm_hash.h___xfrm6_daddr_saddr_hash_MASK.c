#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* a6; } ;
typedef  TYPE_1__ xfrm_address_t ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 

__attribute__((used)) static inline unsigned int FUNC1(xfrm_address_t *daddr, xfrm_address_t *saddr)
{
	return FUNC0(daddr->a6[2] ^ daddr->a6[3] ^
		     saddr->a6[2] ^ saddr->a6[3]);
}