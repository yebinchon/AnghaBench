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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  X1 ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**) ; 

__attribute__((used)) static unsigned char *
FUNC3 (unsigned char *dp,
	       unsigned char code __attribute__((unused)),
	       void *arg)
{
  unsigned char byte1, abreg;
  unw_word t, off;

  byte1 = *dp++;
  t = FUNC2 (&dp);
  off = FUNC2 (&dp);
  abreg = (byte1 & 0x7f);
  if (byte1 & 0x80)
	  FUNC1(X1, t, abreg, off, arg);
  else
	  FUNC0(X1, t, abreg, off, arg);
  return dp;
}