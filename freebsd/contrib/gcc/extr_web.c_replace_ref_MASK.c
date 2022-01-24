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
struct df_ref {int dummy; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct df_ref*) ; 
 scalar_t__* FUNC1 (struct df_ref*) ; 
 scalar_t__ FUNC2 (struct df_ref*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int,int,int) ; 

__attribute__((used)) static void
FUNC6 (struct df_ref *ref, rtx reg)
{
  rtx oldreg = FUNC2 (ref);
  rtx *loc = FUNC1 (ref);

  if (oldreg == reg)
    return;
  if (dump_file)
    FUNC5 (dump_file, "Updating insn %i (%i->%i)\n",
	     FUNC3 (FUNC0 (ref)), FUNC4 (oldreg), FUNC4 (reg)); 
  *loc = reg;
}