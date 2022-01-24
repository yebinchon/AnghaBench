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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_HAVE_TLS ; 

__attribute__((used)) static bool
FUNC2 (rtx x)
{
  if (! TARGET_HAVE_TLS)
    return false;

  if (FUNC0 (x) != SYMBOL_REF)
    return false;

  return FUNC1 (x) != 0;
}