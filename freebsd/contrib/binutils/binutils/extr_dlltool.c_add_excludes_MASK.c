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
struct string_list {char* string; struct string_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct string_list* excludes ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (int) ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static void
FUNC8 (const char *new_excludes)
{
  char *local_copy;
  char *exclude_string;

  local_copy = FUNC7 (new_excludes);

  exclude_string = FUNC5 (local_copy, ",:");
  for (; exclude_string; exclude_string = FUNC5 (NULL, ",:"))
    {
      struct string_list *new_exclude;

      new_exclude = ((struct string_list *)
		     FUNC6 (sizeof (struct string_list)));
      new_exclude->string = (char *) FUNC6 (FUNC4 (exclude_string) + 2);
      /* Don't add a leading underscore for fastcall symbols.  */
      if (*exclude_string == '@')
	FUNC3 (new_exclude->string, "%s", exclude_string);
      else
	FUNC3 (new_exclude->string, "_%s", exclude_string);
      new_exclude->next = excludes;
      excludes = new_exclude;

      /* xgettext:c-format */
      FUNC2 (FUNC0("Excluding symbol: %s"), exclude_string);
    }

  FUNC1 (local_copy);
}