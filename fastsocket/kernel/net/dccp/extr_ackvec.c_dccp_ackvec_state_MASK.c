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
typedef  size_t u32 ;
struct dccp_ackvec {int* av_buf; } ;

/* Variables and functions */
 int DCCP_ACKVEC_STATE_MASK ; 

__attribute__((used)) static inline u8 FUNC0(const struct dccp_ackvec *av,
				   const u32 index)
{
	return av->av_buf[index] & DCCP_ACKVEC_STATE_MASK;
}