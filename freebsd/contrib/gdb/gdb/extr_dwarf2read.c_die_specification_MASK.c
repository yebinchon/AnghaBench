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
struct attribute {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_specification ; 
 struct attribute* FUNC0 (struct die_info*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC1 (struct attribute*,struct dwarf2_cu*) ; 
 struct die_info* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct die_info *
FUNC3 (struct die_info *die, struct dwarf2_cu *cu)
{
  struct attribute *spec_attr = FUNC0 (die, DW_AT_specification, cu);

  if (spec_attr == NULL)
    return NULL;
  else
    return FUNC2 (FUNC1 (spec_attr, cu));
}