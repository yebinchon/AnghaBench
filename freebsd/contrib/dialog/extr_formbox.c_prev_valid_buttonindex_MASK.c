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

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int sTEXT ; 

__attribute__((used)) static int
FUNC1(int state, int extra, bool non_editable)
{
    state = FUNC0(state, extra);
    while (non_editable && state == sTEXT)
	state = FUNC0(state, sTEXT);
    return state;
}