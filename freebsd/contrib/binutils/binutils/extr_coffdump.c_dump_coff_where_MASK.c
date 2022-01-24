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
struct coff_where {int where; int offset; TYPE_1__* section; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  coff_where_entag 136 
#define  coff_where_member_of_enum 135 
#define  coff_where_member_of_struct 134 
#define  coff_where_memory 133 
#define  coff_where_register 132 
#define  coff_where_stack 131 
#define  coff_where_strtag 130 
#define  coff_where_typedef 129 
#define  coff_where_unknown 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (struct coff_where *p)
{
  FUNC3 (1);
  switch (p->where)
    {
    case coff_where_stack:
      FUNC2 ("Stack offset %x", p->offset);
      break;
    case coff_where_memory:
      FUNC2 ("Memory section %s+%x", p->section->name, p->offset);
      break;
    case coff_where_register:
      FUNC2 ("Register %d", p->offset);
      break;
    case coff_where_member_of_struct:
      FUNC2 ("Struct Member offset %x", p->offset);
      break;
    case coff_where_member_of_enum:
      FUNC2 ("Enum Member offset %x", p->offset);
      break;
    case coff_where_unknown:
      FUNC2 ("Undefined symbol");
      break;
    case coff_where_strtag:
      FUNC2 ("STRTAG");
    case coff_where_entag:
      FUNC2 ("ENTAG");
      break;
    case coff_where_typedef:
      FUNC2 ("TYPEDEF");
      break;
    default:
      FUNC0 ();
    }
  FUNC1 ();
  FUNC3 (-1);
}