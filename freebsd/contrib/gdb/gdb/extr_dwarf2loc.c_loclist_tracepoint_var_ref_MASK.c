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
struct dwarf2_loclist_baton {int dummy; } ;
struct axs_value {int dummy; } ;
struct agent_expr {int /*<<< orphan*/  scope; } ;

/* Variables and functions */
 struct dwarf2_loclist_baton* FUNC0 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC2 (struct symbol*,struct agent_expr*,struct axs_value*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC4 (struct dwarf2_loclist_baton*,size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (struct symbol * symbol, struct agent_expr * ax,
			    struct axs_value * value)
{
  struct dwarf2_loclist_baton *dlbaton = FUNC0 (symbol);
  unsigned char *data;
  size_t size;

  data = FUNC4 (dlbaton, &size, ax->scope);
  if (data == NULL)
    FUNC3 ("Variable \"%s\" is not available.", FUNC1 (symbol));

  FUNC2 (symbol, ax, value, data, size);
}