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
struct exclude_list_struct {int type; struct exclude_list_struct* next; void* string; } ;

/* Variables and functions */
 struct exclude_list_struct* excludes ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 
 void* FUNC4 (int) ; 
 char* FUNC5 (char const*) ; 

void
FUNC6 (const char *new_excludes, const int type)
{
  char *local_copy;
  char *exclude_string;

  local_copy = FUNC5 (new_excludes);

  exclude_string = FUNC3 (local_copy, ",:");
  for (; exclude_string; exclude_string = FUNC3 (NULL, ",:"))
    {
      struct exclude_list_struct *new_exclude;

      new_exclude = FUNC4 (sizeof (struct exclude_list_struct));
      new_exclude->string = FUNC4 (FUNC2 (exclude_string) + 1);
      FUNC1 (new_exclude->string, exclude_string);
      new_exclude->type = type;
      new_exclude->next = excludes;
      excludes = new_exclude;
    }

  FUNC0 (local_copy);
}