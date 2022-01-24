#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * gregset_t ;
typedef  int /*<<< orphan*/  greg_t ;
struct TYPE_2__ {int pc; int hi; int lo; int cause; int badvaddr; } ;

/* Variables and functions */
 int CXT_CAUSE ; 
 int CXT_EPC ; 
 int CXT_MDHI ; 
 int CXT_MDLO ; 
 int CXT_RA ; 
 int DEPRECATED_FP_REGNUM ; 
 int FIRST_EMBED_REGNUM ; 
 int LAST_EMBED_REGNUM ; 
 int MAX_REGISTER_SIZE ; 
 int PS_REGNUM ; 
 int UNUSED_REGNUM ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

void
FUNC3 (gregset_t *gregsetp)
{
  int regi;
  greg_t *regp = &(*gregsetp)[0];
  char zerobuf[MAX_REGISTER_SIZE];
  FUNC0 (zerobuf, 0, MAX_REGISTER_SIZE);

  for (regi = 0; regi <= CXT_RA; regi++)
    FUNC2 (regi, (char *) (regp + regi));

  FUNC2 (FUNC1 (current_gdbarch)->pc,
		   (char *) (regp + CXT_EPC));
  FUNC2 (FUNC1 (current_gdbarch)->hi,
		   (char *) (regp + CXT_MDHI));
  FUNC2 (FUNC1 (current_gdbarch)->lo,
		   (char *) (regp + CXT_MDLO));
  FUNC2 (FUNC1 (current_gdbarch)->cause,
		   (char *) (regp + CXT_CAUSE));

  /* Fill inaccessible registers with zero.  */
  FUNC2 (PS_REGNUM, zerobuf);
  FUNC2 (FUNC1 (current_gdbarch)->badvaddr, zerobuf);
  FUNC2 (DEPRECATED_FP_REGNUM, zerobuf);
  FUNC2 (UNUSED_REGNUM, zerobuf);
  for (regi = FIRST_EMBED_REGNUM; regi <= LAST_EMBED_REGNUM; regi++)
    FUNC2 (regi, zerobuf);
}