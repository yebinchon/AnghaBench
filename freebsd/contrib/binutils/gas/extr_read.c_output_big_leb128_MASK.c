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
typedef  int /*<<< orphan*/  LITTLENUM_TYPE ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC2 (char *p, LITTLENUM_TYPE *bignum, int size, int sign)
{
  if (sign)
    return FUNC0 (p, bignum, size);
  else
    return FUNC1 (p, bignum, size);
}