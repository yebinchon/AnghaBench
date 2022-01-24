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
typedef  unsigned char unw_word ;

/* Variables and functions */
 int /*<<< orphan*/  B1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char,void*) ; 

__attribute__((used)) static unsigned char *
FUNC2 (unsigned char *dp, unsigned char code, void *arg)
{
  unw_word label = (code & 0x1f);

  if ((code & 0x20) != 0)
    FUNC0(B1, label, arg);
  else
    FUNC1(B1, label, arg);
  return dp;
}