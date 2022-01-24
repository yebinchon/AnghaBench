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
typedef  int u16_t ;

/* Variables and functions */
 int* zgTkipSboxLower ; 
 int* zgTkipSboxUpper ; 

u16_t FUNC0(u16_t index)
{
    u16_t   low;
    u16_t   high;
    u16_t   left, right;

    low = (index & 0xFF);
    high = ((index >> 8) & 0xFF);

    left = zgTkipSboxLower[low] + (zgTkipSboxUpper[low] << 8 );
    right = zgTkipSboxUpper[high] + (zgTkipSboxLower[high] << 8 );

    return (left ^ right);
}