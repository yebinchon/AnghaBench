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
struct so_list {TYPE_1__* lm_info; } ;
struct link_map_offsets {int /*<<< orphan*/  l_addr_size; scalar_t__ l_addr_offset; } ;
struct TYPE_2__ {scalar_t__ lm; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct link_map_offsets* FUNC1 () ; 

__attribute__((used)) static CORE_ADDR
FUNC2 (struct so_list *so)
{
  struct link_map_offsets *lmo = FUNC1 ();

  return (CORE_ADDR) FUNC0 (so->lm_info->lm +
					     lmo->l_addr_offset,
					     lmo->l_addr_size);
}