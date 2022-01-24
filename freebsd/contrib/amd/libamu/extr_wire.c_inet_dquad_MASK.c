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
typedef  int u_long ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int,int,int,int) ; 

char *
FUNC2(char *buf, size_t l, u_long addr)
{
  addr = FUNC0(addr);
  FUNC1(buf, l, "%ld.%ld.%ld.%ld",
	    ((addr >> 24) & 0xff),
	    ((addr >> 16) & 0xff),
	    ((addr >> 8) & 0xff),
	    ((addr >> 0) & 0xff));
  return buf;
}