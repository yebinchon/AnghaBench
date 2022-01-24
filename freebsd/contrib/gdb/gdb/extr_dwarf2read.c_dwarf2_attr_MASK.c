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
struct die_info {unsigned int num_attrs; struct attribute* attrs; } ;
struct attribute {unsigned int name; } ;

/* Variables and functions */
 unsigned int DW_AT_abstract_origin ; 
 unsigned int DW_AT_specification ; 
 int /*<<< orphan*/  FUNC0 (struct attribute*,struct dwarf2_cu*) ; 
 struct die_info* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct attribute *
FUNC2 (struct die_info *die, unsigned int name, struct dwarf2_cu *cu)
{
  unsigned int i;
  struct attribute *spec = NULL;

  for (i = 0; i < die->num_attrs; ++i)
    {
      if (die->attrs[i].name == name)
	{
	  return &die->attrs[i];
	}
      if (die->attrs[i].name == DW_AT_specification
	  || die->attrs[i].name == DW_AT_abstract_origin)
	spec = &die->attrs[i];
    }
  if (spec)
    {
      struct die_info *ref_die =
      FUNC1 (FUNC0 (spec, cu));

      if (ref_die)
	return FUNC2 (ref_die, name, cu);
    }

  return NULL;
}