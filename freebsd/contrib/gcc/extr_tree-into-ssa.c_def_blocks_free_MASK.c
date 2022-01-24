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
struct def_blocks_d {int /*<<< orphan*/  livein_blocks; int /*<<< orphan*/  phi_blocks; int /*<<< orphan*/  def_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct def_blocks_d*) ; 

__attribute__((used)) static void
FUNC2 (void *p)
{
  struct def_blocks_d *entry = (struct def_blocks_d *) p;
  FUNC0 (entry->def_blocks);
  FUNC0 (entry->phi_blocks);
  FUNC0 (entry->livein_blocks);
  FUNC1 (entry);
}