#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* decl_t ;
struct TYPE_7__ {int /*<<< orphan*/  transformed_regexp; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int decls_num; TYPE_1__** decls; } ;
struct TYPE_5__ {scalar_t__ mode; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  annotation_message_reported_p ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* description ; 
 scalar_t__ dm_insn_reserv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ progress_flag ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3 (void)
{
  decl_t decl;
  int i;

  if (progress_flag)
    FUNC2 (stderr, "Check unit distributions to automata...");
  annotation_message_reported_p = FALSE;
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_insn_reserv)
	FUNC1
	  (FUNC0 (decl)->name,
	   FUNC0 (decl)->transformed_regexp);
    }
  if (progress_flag)
    FUNC2 (stderr, "done\n");
}