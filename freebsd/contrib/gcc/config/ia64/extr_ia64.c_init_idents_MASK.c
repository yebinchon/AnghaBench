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
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ small_ident1 ; 
 scalar_t__ small_ident2 ; 

__attribute__((used)) static void
FUNC1 (void)
{
  if (small_ident1 == 0)
    {
      small_ident1 = FUNC0 ("small");
      small_ident2 = FUNC0 ("__small__");
    }
}