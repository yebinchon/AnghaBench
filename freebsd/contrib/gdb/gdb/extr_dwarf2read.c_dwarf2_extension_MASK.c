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
 int /*<<< orphan*/  DW_AT_extension ; 
 struct attribute* FUNC0 (struct die_info*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 
 unsigned int FUNC1 (struct attribute*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 struct die_info* FUNC3 (unsigned int) ; 

__attribute__((used)) static struct die_info *
FUNC4 (struct die_info *die, struct dwarf2_cu *cu)
{
  struct attribute *attr;
  struct die_info *extension_die;
  unsigned int ref;

  attr = FUNC0 (die, DW_AT_extension, cu);
  if (attr == NULL)
    return NULL;

  ref = FUNC1 (attr, cu);
  extension_die = FUNC3 (ref);
  if (!extension_die)
    {
      FUNC2 ("Dwarf Error: Cannot find referent at offset %d.", ref);
    }

  return extension_die;
}