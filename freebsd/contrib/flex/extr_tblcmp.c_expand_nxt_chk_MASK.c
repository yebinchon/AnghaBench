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
 int MAX_XPAIRS_INCREMENT ; 
 scalar_t__ chk ; 
 int current_max_xpairs ; 
 int /*<<< orphan*/  num_reallocs ; 
 scalar_t__ nxt ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 

void    FUNC2 ()
{
	int old_max = current_max_xpairs;

	current_max_xpairs += MAX_XPAIRS_INCREMENT;

	++num_reallocs;

	nxt = FUNC0 (nxt, current_max_xpairs);
	chk = FUNC0 (chk, current_max_xpairs);

	FUNC1 ((char *) (chk + old_max),
		  (size_t) (MAX_XPAIRS_INCREMENT * sizeof (int)));
}