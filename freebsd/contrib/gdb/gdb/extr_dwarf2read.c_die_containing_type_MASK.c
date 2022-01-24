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
struct type {int dummy; } ;
struct dwarf2_cu {TYPE_1__* objfile; } ;
struct die_info {int dummy; } ;
struct attribute {int dummy; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_containing_type ; 
 int /*<<< orphan*/  FUNC0 (struct die_info*) ; 
 struct attribute* FUNC1 (struct die_info*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 
 unsigned int FUNC2 (struct attribute*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct die_info* FUNC4 (unsigned int) ; 
 struct type* FUNC5 (struct die_info*,struct dwarf2_cu*) ; 

__attribute__((used)) static struct type *
FUNC6 (struct die_info *die, struct dwarf2_cu *cu)
{
  struct type *type = NULL;
  struct attribute *type_attr;
  struct die_info *type_die = NULL;
  unsigned int ref;

  type_attr = FUNC1 (die, DW_AT_containing_type, cu);
  if (type_attr)
    {
      ref = FUNC2 (type_attr, cu);
      type_die = FUNC4 (ref);
      if (!type_die)
	{
	  FUNC3 ("Dwarf Error: Cannot find referent at offset %d [in module %s]", ref, 
			  cu->objfile->name);
	  return NULL;
	}
      type = FUNC5 (type_die, cu);
    }
  if (!type)
    {
      if (type_die)
	FUNC0 (type_die);
      FUNC3 ("Dwarf Error: Problem turning containing type into gdb type [in module %s]", 
		      cu->objfile->name);
    }
  return type;
}