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
struct dwarf1_unit {struct dwarf1_unit* prev; } ;
struct dwarf1_debug {struct dwarf1_unit* lastUnit; int /*<<< orphan*/  abfd; } ;
typedef  int bfd_size_type ;

/* Variables and functions */
 struct dwarf1_unit* FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct dwarf1_unit*
FUNC1 (struct dwarf1_debug* stash)
{
  bfd_size_type amt = sizeof (struct dwarf1_unit);

  struct dwarf1_unit* x = FUNC0 (stash->abfd, amt);
  x->prev = stash->lastUnit;
  stash->lastUnit = x;

  return x;
}