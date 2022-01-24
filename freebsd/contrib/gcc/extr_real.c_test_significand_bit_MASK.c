#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int* sig; } ;
typedef  TYPE_1__ REAL_VALUE_TYPE ;

/* Variables and functions */
 unsigned int HOST_BITS_PER_LONG ; 

__attribute__((used)) static inline bool
FUNC0 (REAL_VALUE_TYPE *r, unsigned int n)
{
  /* ??? Compiler bug here if we return this expression directly.
     The conversion to bool strips the "&1" and we wind up testing
     e.g. 2 != 0 -> true.  Seen in gcc version 3.2 20020520.  */
  int t = (r->sig[n / HOST_BITS_PER_LONG] >> (n % HOST_BITS_PER_LONG)) & 1;
  return t;
}