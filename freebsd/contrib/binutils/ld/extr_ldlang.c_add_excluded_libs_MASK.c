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
struct excluded_lib {char* name; struct excluded_lib* next; } ;

/* Variables and functions */
 struct excluded_lib* excluded_libs ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char*) ; 
 void* FUNC3 (int) ; 

void
FUNC4 (const char *list)
{
  const char *p = list, *end;

  while (*p != '\0')
    {
      struct excluded_lib *entry;
      end = FUNC2 (p, ",:");
      if (end == NULL)
	end = p + FUNC1 (p);
      entry = FUNC3 (sizeof (*entry));
      entry->next = excluded_libs;
      entry->name = FUNC3 (end - p + 1);
      FUNC0 (entry->name, p, end - p);
      entry->name[end - p] = '\0';
      excluded_libs = entry;
      if (*end == '\0')
	break;
      p = end + 1;
    }
}