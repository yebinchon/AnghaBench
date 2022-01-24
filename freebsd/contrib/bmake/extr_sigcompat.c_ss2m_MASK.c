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
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  MASK_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

__attribute__((used)) static  MASK_T
FUNC1(sigset_t *ss)
{
	MASK_T  ma[(sizeof(sigset_t) / sizeof(MASK_T)) + 1];

	FUNC0((char *) ma, (char *) ss, sizeof(sigset_t));
	return ma[0];
}