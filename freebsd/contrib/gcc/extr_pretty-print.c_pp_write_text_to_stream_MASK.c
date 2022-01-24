#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* buffer; } ;
typedef  TYPE_2__ pretty_printer ;
struct TYPE_6__ {int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 char* FUNC2 (TYPE_2__*) ; 

void
FUNC3 (pretty_printer *pp)
{
  const char *text = FUNC2 (pp);
  FUNC0 (text, pp->buffer->stream);
  FUNC1 (pp);
}