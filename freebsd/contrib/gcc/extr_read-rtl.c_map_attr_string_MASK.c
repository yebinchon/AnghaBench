#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mapping {scalar_t__* name; struct map_value* values; TYPE_1__* group; } ;
struct map_value {int number; struct map_value* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  attrs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const**) ; 
 char* FUNC1 (char const*,char) ; 
 scalar_t__ FUNC2 (char const*,scalar_t__*,int) ; 

__attribute__((used)) static struct map_value *
FUNC3 (const char *p, struct mapping *macro, int value)
{
  const char *attr;
  struct mapping *m;
  struct map_value *v;

  /* If there's a "macro:" prefix, check whether the macro name matches.
     Set ATTR to the start of the attribute name.  */
  attr = FUNC1 (p, ':');
  if (attr == 0)
    attr = p;
  else
    {
      if (FUNC2 (p, macro->name, attr - p) != 0
	  || macro->name[attr - p] != 0)
	return 0;
      attr++;
    }

  /* Find the attribute specification.  */
  m = (struct mapping *) FUNC0 (macro->group->attrs, &attr);
  if (m == 0)
    return 0;

  /* Find the attribute value for VALUE.  */
  for (v = m->values; v != 0; v = v->next)
    if (v->number == value)
      break;

  return v;
}