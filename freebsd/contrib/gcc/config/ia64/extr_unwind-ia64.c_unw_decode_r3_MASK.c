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
typedef  int /*<<< orphan*/  unw_word ;

/* Variables and functions */
 int /*<<< orphan*/  R3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**) ; 

__attribute__((used)) static unsigned char *
FUNC2 (unsigned char *dp, unsigned char code, void *arg)
{
  unw_word rlen;

  rlen = FUNC1 (&dp);
  FUNC0(R3, ((code & 0x3) == 1), rlen, arg);
  return dp;
}