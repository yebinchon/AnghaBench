#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  (* fprintf_func ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ disassemble_info ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  scalar_t__ CGEN_SYNTAX_CHAR_TYPE ;
typedef  int /*<<< orphan*/  CGEN_SYNTAX ;
typedef  int /*<<< orphan*/  CGEN_INSN ;
typedef  int /*<<< orphan*/  CGEN_FIELDS ;
typedef  int /*<<< orphan*/  CGEN_CPU_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const) ; 
 scalar_t__ FUNC5 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__ const) ; 
 scalar_t__ FUNC7 (scalar_t__ const) ; 
 scalar_t__* FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (CGEN_CPU_DESC cd,
		   void *dis_info,
		   const CGEN_INSN *insn,
		   CGEN_FIELDS *fields,
		   bfd_vma pc,
		   int length)
{
  const CGEN_SYNTAX *syntax = FUNC3 (insn);
  disassemble_info *info = (disassemble_info *) dis_info;
  const CGEN_SYNTAX_CHAR_TYPE *syn;

  FUNC0 (cd);

  for (syn = FUNC8 (syntax); *syn; ++syn)
    {
      if (FUNC7 (*syn))
	{
	  (*info->fprintf_func) (info->stream, "%s", FUNC2 (insn));
	  continue;
	}
      if (FUNC5 (*syn))
	{
	  (*info->fprintf_func) (info->stream, "%c", FUNC4 (*syn));
	  continue;
	}

      /* We have an operand.  */
      FUNC9 (cd, FUNC6 (*syn), info,
				 fields, FUNC1 (insn), pc, length);
    }
}