#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* varinfo_t ;
struct TYPE_3__ {char* name; unsigned int id; scalar_t__ offset; scalar_t__ fullsize; scalar_t__ size; struct TYPE_3__* next; struct TYPE_3__* collapsed_to; } ;

/* Variables and functions */
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (unsigned int) ; 

__attribute__((used)) static unsigned int
FUNC3 (unsigned int var)
{
  varinfo_t currvar = FUNC2 (var);
  varinfo_t field;

  for (field = currvar->next; field; field = field->next)
    {
      if (dump_file)
	FUNC0 (dump_file, "Type safety: Collapsing var %s into %s\n",
		 field->name, currvar->name);

      FUNC1 (!field->collapsed_to);
      field->collapsed_to = currvar;
    }

  currvar->next = NULL;
  currvar->size = currvar->fullsize - currvar->offset;

  return currvar->id;
}