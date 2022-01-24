#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tls_start_addr; } ;
struct so_list {TYPE_1__ pa64_solib_desc; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */

CORE_ADDR
FUNC0 (struct so_list *so)
{
  return so->pa64_solib_desc.tls_start_addr;
}