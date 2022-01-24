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
struct type {int dummy; } ;
struct comp_unit_head {int /*<<< orphan*/  addr_size; } ;
struct dwarf2_cu {struct comp_unit_head header; } ;
struct die_info {struct type* type; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  TYPE_LENGTH ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_byte_size ; 
 int /*<<< orphan*/  FUNC0 (struct attribute*) ; 
 int /*<<< orphan*/  FUNC1 (struct die_info*,struct dwarf2_cu*) ; 
 struct attribute* FUNC2 (struct die_info*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 
 struct type* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct die_info *die, struct dwarf2_cu *cu)
{
  struct comp_unit_head *cu_header = &cu->header;
  struct type *type;
  struct attribute *attr;

  if (die->type)
    {
      return;
    }

  type = FUNC3 (FUNC1 (die, cu));
  attr = FUNC2 (die, DW_AT_byte_size, cu);
  if (attr)
    {
      TYPE_LENGTH (type) = FUNC0 (attr);
    }
  else
    {
      TYPE_LENGTH (type) = cu_header->addr_size;
    }
  die->type = type;
}