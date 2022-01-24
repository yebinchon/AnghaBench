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
 int /*<<< orphan*/  DW_AT_MIPS_linkage_name ; 
 int /*<<< orphan*/  DW_AT_name ; 
 char* FUNC0 (struct attribute*) ; 
 struct attribute* FUNC1 (struct die_info*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 

__attribute__((used)) static char *
FUNC2 (struct die_info *die, struct dwarf2_cu *cu)
{
  struct attribute *attr;

  attr = FUNC1 (die, DW_AT_MIPS_linkage_name, cu);
  if (attr && FUNC0 (attr))
    return FUNC0 (attr);
  attr = FUNC1 (die, DW_AT_name, cu);
  if (attr && FUNC0 (attr))
    return FUNC0 (attr);
  return NULL;
}