#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* context; } ;
typedef  TYPE_2__ cpp_reader ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_7__ {scalar_t__ prev; } ;

/* Variables and functions */
 scalar_t__ CPP_EOF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_5__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC3 (cpp_reader *pfile)
{
  /* Discard all stacked contexts.  */
  while (pfile->context->prev)
    FUNC2 (pfile);

  /* Sweep up all tokens remaining on the line.  */
  if (! FUNC0 ())
    while (FUNC1 (pfile)->type != CPP_EOF)
      ;
}