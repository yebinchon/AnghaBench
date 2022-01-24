#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct insn_reserv {int bypassed; struct insn_reserv* next; int /*<<< orphan*/  insn_num; int /*<<< orphan*/  condexp; int /*<<< orphan*/  default_latency; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct insn_reserv** last_insn_reserv_p ; 
 int /*<<< orphan*/  n_insn_reservs ; 
 struct insn_reserv* FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6 (rtx def)
{
  struct insn_reserv *decl = FUNC5 (sizeof (struct insn_reserv));

  decl->name            = FUNC0 (FUNC3 (def, 0));
  decl->default_latency = FUNC2 (def, 1);
  decl->condexp         = FUNC4 (FUNC1 (def, 2), 0, 0);
  decl->insn_num        = n_insn_reservs;
  decl->bypassed	= false;
  decl->next            = 0;
  
  *last_insn_reserv_p = decl;
  last_insn_reserv_p  = &decl->next;
  n_insn_reservs++;
}