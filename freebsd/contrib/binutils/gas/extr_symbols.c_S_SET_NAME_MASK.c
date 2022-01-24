#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* bsym; } ;
typedef  TYPE_2__ symbolS ;
struct local_symbol {char const* lsy_name; } ;
struct TYPE_5__ {char const* name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 

void
FUNC1 (symbolS *s, const char *name)
{
  if (FUNC0 (s))
    {
      ((struct local_symbol *) s)->lsy_name = name;
      return;
    }
  s->bsym->name = name;
}