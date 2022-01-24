#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct obstack {int dummy; } ;
struct TYPE_5__ {TYPE_1__* buffer; } ;
typedef  TYPE_2__ pretty_printer ;
struct TYPE_4__ {struct obstack* obstack; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct obstack*) ; 
 scalar_t__ FUNC1 (struct obstack*) ; 

const char *
FUNC2 (const pretty_printer *pp)
{
  const char *p = NULL;
  struct obstack *text = pp->buffer->obstack;

  if (FUNC0 (text) != FUNC1 (text))
    p = ((const char *) FUNC1 (text)) - 1;
  return p;
}