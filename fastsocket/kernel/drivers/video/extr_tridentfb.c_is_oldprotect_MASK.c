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
 int CYBER9382 ; 
 int CYBER9385 ; 
 int PROVIDIA9685 ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static inline int FUNC1(int id)
{
	return	FUNC0(id) ||
		(id == PROVIDIA9685) ||
		(id == CYBER9382) ||
		(id == CYBER9385);
}