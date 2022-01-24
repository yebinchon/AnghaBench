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
struct value {int dummy; } ;
struct symbol {int dummy; } ;
struct frame_info {int dummy; } ;
struct dwarf2_locexpr_baton {int /*<<< orphan*/  objfile; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 struct dwarf2_locexpr_baton* FUNC0 (struct symbol*) ; 
 struct value* FUNC1 (struct symbol*,struct frame_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct value *
FUNC2 (struct symbol *symbol, struct frame_info *frame)
{
  struct dwarf2_locexpr_baton *dlbaton = FUNC0 (symbol);
  struct value *val;
  val = FUNC1 (symbol, frame, dlbaton->data, dlbaton->size,
				  dlbaton->objfile);

  return val;
}