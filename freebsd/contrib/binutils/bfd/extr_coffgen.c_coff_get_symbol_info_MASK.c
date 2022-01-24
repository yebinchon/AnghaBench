#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ value; } ;
typedef  TYPE_4__ symbol_info ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;
struct TYPE_12__ {TYPE_3__* native; } ;
struct TYPE_8__ {scalar_t__ n_value; } ;
struct TYPE_9__ {TYPE_1__ syment; } ;
struct TYPE_10__ {TYPE_2__ u; scalar_t__ fix_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3 (bfd *abfd, asymbol *symbol, symbol_info *ret)
{
  FUNC0 (symbol, ret);

  if (FUNC1 (symbol)->native != NULL
      && FUNC1 (symbol)->native->fix_value)
    ret->value = FUNC1 (symbol)->native->u.syment.n_value -
      (unsigned long) FUNC2 (abfd);
}