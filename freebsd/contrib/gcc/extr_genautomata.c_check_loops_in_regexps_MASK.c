#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* decl_t ;
struct TYPE_8__ {int loop_pass_num; int /*<<< orphan*/  name; int /*<<< orphan*/  regexp; } ;
struct TYPE_7__ {int decls_num; TYPE_1__** decls; } ;
struct TYPE_6__ {scalar_t__ mode; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_1__*) ; 
 int curr_loop_pass_num ; 
 TYPE_3__* description ; 
 scalar_t__ dm_reserv ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  decl_t decl;
  int i;

  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_reserv)
	FUNC0 (decl)->loop_pass_num = 0;
    }
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      curr_loop_pass_num = i;

      if (decl->mode == dm_reserv)
	  {
	    FUNC0 (decl)->loop_pass_num = curr_loop_pass_num;
	    if (FUNC3 (FUNC0 (decl)->regexp, decl))
	      {
		FUNC2 (FUNC0 (decl)->regexp);
		FUNC1 ("cycle in definition of reservation `%s'",
		       FUNC0 (decl)->name);
	      }
	  }
    }
}