#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  section ;
struct TYPE_3__ {int /*<<< orphan*/ * (* select_section ) (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ current_function_decl ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 scalar_t__ in_cold_section_p ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__ targetm ; 
 int /*<<< orphan*/ * FUNC5 () ; 

section *
FUNC6 (void)
{
#ifdef USE_SELECT_SECTION_FOR_FUNCTIONS
  if (current_function_decl != NULL_TREE
      && DECL_SECTION_NAME (current_function_decl) != NULL_TREE)
    return in_cold_section_p ? unlikely_text_section ()
			     : get_named_section (current_function_decl,
						  NULL, 0);
  else
    return targetm.asm_out.select_section (current_function_decl,
					   in_cold_section_p,
					   DECL_ALIGN (current_function_decl));
#else
  return (in_cold_section_p
	  ? FUNC5 ()
	  : FUNC3 (current_function_decl));
#endif
}