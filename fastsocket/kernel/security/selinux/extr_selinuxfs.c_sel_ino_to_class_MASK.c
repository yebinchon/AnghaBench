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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 unsigned long SEL_INO_MASK ; 
 scalar_t__ SEL_VEC_MAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 

__attribute__((used)) static inline u16 FUNC1(unsigned long ino)
{
	return FUNC0(ino & SEL_INO_MASK, SEL_VEC_MAX + 1);
}