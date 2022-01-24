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
typedef  scalar_t__ tree ;
struct TYPE_4__ {scalar_t__ unlikely_text_section_name; } ;
struct TYPE_3__ {char* (* strip_name_encoding ) (char*) ;} ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ UNLIKELY_EXECUTED_TEXT_SECTION_NAME ; 
 char* FUNC4 (scalar_t__) ; 
 TYPE_2__* cfun ; 
 scalar_t__ current_function_decl ; 
 scalar_t__ flag_function_sections ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC8 (char*) ; 
 TYPE_1__ targetm ; 

__attribute__((used)) static void
FUNC9 (void)
{
  const char *stripped_name;
  char *name, *buffer;
  tree dsn;

  FUNC5 (cfun && current_function_decl);
  if (cfun->unlikely_text_section_name)
    return;

  dsn = FUNC1 (current_function_decl);
  if (flag_function_sections && dsn)
    {
      name = FUNC4 (FUNC2 (dsn) + 1);
      FUNC7 (name, FUNC3 (dsn), FUNC2 (dsn) + 1);

      stripped_name = targetm.strip_name_encoding (name);

      buffer = FUNC0 ((stripped_name, "_unlikely", NULL));
      cfun->unlikely_text_section_name = FUNC6 (buffer);
    }
  else
    cfun->unlikely_text_section_name =  UNLIKELY_EXECUTED_TEXT_SECTION_NAME;
}