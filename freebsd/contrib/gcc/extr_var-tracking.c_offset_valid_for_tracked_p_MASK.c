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
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_VAR_PARTS ; 

__attribute__((used)) static inline bool
FUNC0 (HOST_WIDE_INT offset)
{
  return (-MAX_VAR_PARTS < offset) && (offset < MAX_VAR_PARTS);
}