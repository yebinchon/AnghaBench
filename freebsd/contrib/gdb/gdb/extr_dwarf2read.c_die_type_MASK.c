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
 int /*<<< orphan*/  DW_AT_type ; 
 int /*<<< orphan*/  FT_VOID ; 
 int /*<<< orphan*/  FUNC0 (struct die_info*) ; 
 struct attribute* FUNC1 (struct die_info*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 
 struct type* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 
 unsigned int FUNC3 (struct attribute*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct die_info* FUNC5 (unsigned int) ; 
 struct type* FUNC6 (struct die_info*,struct dwarf2_cu*) ; 

__attribute__((used)) static struct type *
FUNC7 (struct die_info *die, struct dwarf2_cu *cu)
{
  struct type *type;
  struct attribute *type_attr;
  struct die_info *type_die;
  unsigned int ref;

  type_attr = FUNC1 (die, DW_AT_type, cu);
  if (!type_attr)
    {
      /* A missing DW_AT_type represents a void type.  */
      return FUNC2 (cu->objfile, FT_VOID, cu);
    }
  else
    {
      ref = FUNC3 (type_attr, cu);
      type_die = FUNC5 (ref);
      if (!type_die)
	{
	  FUNC4 ("Dwarf Error: Cannot find referent at offset %d [in module %s]", 
			  ref, cu->objfile->name);
	  return NULL;
	}
    }
  type = FUNC6 (type_die, cu);
  if (!type)
    {
      FUNC0 (type_die);
      FUNC4 ("Dwarf Error: Problem turning type die at offset into gdb type [in module %s]",
		      cu->objfile->name);
    }
  return type;
}