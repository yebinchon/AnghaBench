#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_4__* type_p ;
struct TYPE_8__ {int /*<<< orphan*/ * file; } ;
struct TYPE_9__ {TYPE_1__ line; } ;
struct TYPE_10__ {TYPE_2__ s; } ;
struct TYPE_11__ {scalar_t__ gc_used; struct TYPE_11__* next; TYPE_3__ u; } ;

/* Variables and functions */
 scalar_t__ GC_MAYBE_POINTED_TO ; 
 scalar_t__ GC_POINTED_TO ; 
 int /*<<< orphan*/  header_file ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC2 (type_p structures, type_p param_structs)
{
  type_p s;

  FUNC0 (header_file, "\n/* Enumeration of types known.  */\n");
  FUNC0 (header_file, "enum gt_types_enum {\n");
  for (s = structures; s; s = s->next)
    if (s->gc_used == GC_POINTED_TO
	|| s->gc_used == GC_MAYBE_POINTED_TO)
      {
	if (s->gc_used == GC_MAYBE_POINTED_TO
	    && s->u.s.line.file == NULL)
	  continue;

	FUNC0 (header_file, " gt_ggc_e_");
	FUNC1 (header_file, s);
	FUNC0 (header_file, ", \n");
      }
  for (s = param_structs; s; s = s->next)
    if (s->gc_used == GC_POINTED_TO)
      {
	FUNC0 (header_file, " gt_e_");
	FUNC1 (header_file, s);
	FUNC0 (header_file, ", \n");
      }
  FUNC0 (header_file, " gt_types_enum_last\n");
  FUNC0 (header_file, "};\n");
}