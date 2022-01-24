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
struct dwarf2_cu {int dummy; } ;
struct die_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_declaration ; 
 int /*<<< orphan*/  DW_AT_specification ; 
 scalar_t__ FUNC0 (struct die_info*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 

__attribute__((used)) static int
FUNC1 (struct die_info *die, struct dwarf2_cu *cu)
{
  return (FUNC0 (die, DW_AT_declaration, cu)
	  && ! FUNC0 (die, DW_AT_specification, cu));
}