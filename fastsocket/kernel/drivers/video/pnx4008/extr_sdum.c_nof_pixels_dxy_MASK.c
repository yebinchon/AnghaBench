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
struct dum_ch_setup {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dum_ch_setup*) ; 
 int FUNC1 (struct dum_ch_setup*) ; 

__attribute__((used)) static u32 FUNC2(struct dum_ch_setup *ch_setup)
{
	return (FUNC0(ch_setup) * FUNC1(ch_setup));
}