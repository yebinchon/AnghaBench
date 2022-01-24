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
typedef  int /*<<< orphan*/ * br_rsa_private ;

/* Variables and functions */
 int /*<<< orphan*/  br_rsa_i15_private ; 
 int /*<<< orphan*/  br_rsa_i31_private ; 
 int /*<<< orphan*/  br_rsa_i62_private ; 

br_rsa_private
FUNC0(void)
{
#if BR_INT128 || BR_UMUL128
	return &br_rsa_i62_private;
#elif BR_LOMUL
	return &br_rsa_i15_private;
#else
	return &br_rsa_i31_private;
#endif
}