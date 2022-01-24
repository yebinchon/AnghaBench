#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flag_char; scalar_t__ predicate; } ;
typedef  TYPE_1__ format_flag_spec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,scalar_t__) ; 

__attribute__((used)) static const format_flag_spec *
FUNC2 (const format_flag_spec *spec, int flag, const char *predicates)
{
  int i;
  for (i = 0; spec[i].flag_char != 0; i++)
    {
      if (spec[i].flag_char != flag)
	continue;
      if (predicates != NULL)
	{
	  if (spec[i].predicate != 0
	      && FUNC1 (predicates, spec[i].predicate) != 0)
	    return &spec[i];
	}
      else if (spec[i].predicate == 0)
	return &spec[i];
    }
  FUNC0 (predicates);
  return NULL;
}