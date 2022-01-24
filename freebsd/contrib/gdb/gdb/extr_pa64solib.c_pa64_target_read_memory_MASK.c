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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static void *
FUNC1 (void *buffer, CORE_ADDR ptr, size_t bufsiz, int ident)
{
  if (FUNC0 (ptr, buffer, bufsiz) != 0)
    return 0;
  return buffer;
}