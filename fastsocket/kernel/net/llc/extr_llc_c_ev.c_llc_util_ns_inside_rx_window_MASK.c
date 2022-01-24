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
typedef  int u8 ;
typedef  int u16 ;

/* Variables and functions */
 int LLC_2_SEQ_NBR_MODULO ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 

__attribute__((used)) static u16 FUNC1(u8 ns, u8 vr, u8 rw)
{
	return !FUNC0(vr, ns,
				     (vr + rw - 1) % LLC_2_SEQ_NBR_MODULO);
}