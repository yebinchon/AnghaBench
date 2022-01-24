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
typedef  scalar_t__ rep_t ;
typedef  int /*<<< orphan*/  fp_t ;

/* Variables and functions */
 scalar_t__ absMask ; 
 scalar_t__ const infRep ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(fp_t a, fp_t b) {
    const rep_t aAbs = FUNC0(a) & absMask;
    const rep_t bAbs = FUNC0(b) & absMask;
    return aAbs > infRep || bAbs > infRep;
}