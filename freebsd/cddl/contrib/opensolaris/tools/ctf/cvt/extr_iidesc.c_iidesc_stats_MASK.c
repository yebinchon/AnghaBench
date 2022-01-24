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
typedef  int /*<<< orphan*/  hash_t ;

/* Variables and functions */
 scalar_t__ II_GFUN ; 
 scalar_t__ II_GVAR ; 
 scalar_t__ II_SFUN ; 
 scalar_t__ II_SOU ; 
 scalar_t__ II_SVAR ; 
 scalar_t__ II_TYPE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  iidesc_count_type ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int,int,int) ; 

void
FUNC2(hash_t *ii)
{
	FUNC1("GFun: %5d SFun: %5d GVar: %5d SVar: %5d T %5d SOU: %5d\n",
	    FUNC0(ii, iidesc_count_type, (void *)II_GFUN),
	    FUNC0(ii, iidesc_count_type, (void *)II_SFUN),
	    FUNC0(ii, iidesc_count_type, (void *)II_GVAR),
	    FUNC0(ii, iidesc_count_type, (void *)II_SVAR),
	    FUNC0(ii, iidesc_count_type, (void *)II_TYPE),
	    FUNC0(ii, iidesc_count_type, (void *)II_SOU));
}