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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_REF ; 
 scalar_t__ FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (struct type*) ; 
 scalar_t__ FUNC3 (struct type*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ui_file*,char*,...) ; 

__attribute__((used)) static void
FUNC6 (struct type *type, struct ui_file *stream,
		       int need_pre_space, int need_post_space)
{
  int did_print_modifier = 0;
  const char *address_space_id;

  /* We don't print `const' qualifiers for references --- since all
     operators affect the thing referenced, not the reference itself,
     every reference is `const'.  */
  if (FUNC1 (type)
      && FUNC0 (type) != TYPE_CODE_REF)
    {
      if (need_pre_space)
	FUNC5 (stream, " ");
      FUNC5 (stream, "const");
      did_print_modifier = 1;
    }

  if (FUNC3 (type))
    {
      if (did_print_modifier || need_pre_space)
	FUNC5 (stream, " ");
      FUNC5 (stream, "volatile");
      did_print_modifier = 1;
    }

  address_space_id = FUNC4 (FUNC2 (type));
  if (address_space_id)
    {
      if (did_print_modifier || need_pre_space)
	FUNC5 (stream, " ");
      FUNC5 (stream, "@%s", address_space_id);
      did_print_modifier = 1;
    }

  if (did_print_modifier && need_post_space)
    FUNC5 (stream, " ");
}