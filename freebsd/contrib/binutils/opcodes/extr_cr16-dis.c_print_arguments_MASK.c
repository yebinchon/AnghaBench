#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct disassemble_info {int /*<<< orphan*/  stream; int /*<<< orphan*/  (* fprintf_func ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_4__ {int nargs; int /*<<< orphan*/ * arg; } ;
typedef  TYPE_1__ ins ;
typedef  int /*<<< orphan*/  bfd_vma ;
struct TYPE_5__ {int size; } ;

/* Variables and functions */
 scalar_t__ INST_HAS_REG_LIST ; 
 scalar_t__ FUNC0 (char*) ; 
 TYPE_3__* instruction ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct disassemble_info*) ; 
 int processing_argument_number ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6 (ins *currInsn, bfd_vma memaddr, struct disassemble_info *info)
{
  int i;

  /* For "pop/push/popret RA instruction only.  */
  if ((FUNC0 ("pop")
       || (FUNC0 ("popret")
	   || (FUNC0 ("push"))))
      && currInsn->nargs == 1)
    {
      info->fprintf_func (info->stream, "RA");
      return;
    }

  for (i = 0; i < currInsn->nargs; i++)
    {
      processing_argument_number = i;

      /* For "bal (ra), disp17" instruction only.  */
      if ((FUNC0 ("bal")) && (i == 0) && instruction->size == 2)
        {
          info->fprintf_func (info->stream, "(ra),");
          continue;
        }

      if ((INST_HAS_REG_LIST) && (i == 2))
        info->fprintf_func (info->stream, "RA");
      else
        FUNC1 (&currInsn->arg[i], memaddr, info);

      if ((i != currInsn->nargs - 1) && (!FUNC0 ("b")))
        info->fprintf_func (info->stream, ",");
    }
}