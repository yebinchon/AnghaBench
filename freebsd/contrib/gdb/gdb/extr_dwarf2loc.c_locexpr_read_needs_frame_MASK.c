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
struct symbol {int dummy; } ;
struct dwarf2_locexpr_baton {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 struct dwarf2_locexpr_baton* FUNC0 (struct symbol*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (struct symbol *symbol)
{
  struct dwarf2_locexpr_baton *dlbaton = FUNC0 (symbol);
  return FUNC1 (dlbaton->data, dlbaton->size);
}