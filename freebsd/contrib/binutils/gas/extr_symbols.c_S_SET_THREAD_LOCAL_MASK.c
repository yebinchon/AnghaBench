#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* bsym; } ;
typedef  TYPE_2__ symbolS ;
struct local_symbol {int dummy; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_9__ {int flags; TYPE_4__* section; } ;

/* Variables and functions */
 int BSF_FUNCTION ; 
 int BSF_THREAD_LOCAL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int SEC_THREAD_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 TYPE_2__* FUNC6 (struct local_symbol*) ; 

void
FUNC7 (symbolS *s)
{
  if (FUNC0 (s))
    s = FUNC6 ((struct local_symbol *) s);
  if (FUNC4 (s->bsym->section)
      && (s->bsym->flags & BSF_THREAD_LOCAL) != 0)
    return;
  s->bsym->flags |= BSF_THREAD_LOCAL;
  if ((s->bsym->flags & BSF_FUNCTION) != 0)
    FUNC3 (FUNC2("Accessing function `%s' as thread-local object"),
	    FUNC1 (s));
  else if (! FUNC5 (s->bsym->section)
	   && (s->bsym->section->flags & SEC_THREAD_LOCAL) == 0)
    FUNC3 (FUNC2("Accessing `%s' as thread-local object"),
	    FUNC1 (s));
}