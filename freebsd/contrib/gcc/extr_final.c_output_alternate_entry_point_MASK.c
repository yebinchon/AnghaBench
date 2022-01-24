#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_3__ {int /*<<< orphan*/  (* globalize_label ) (int /*<<< orphan*/ *,char const*) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
#define  LABEL_GLOBAL_ENTRY 131 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
#define  LABEL_NORMAL 130 
#define  LABEL_STATIC_ENTRY 129 
#define  LABEL_WEAK_ENTRY 128 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_2__ targetm ; 

__attribute__((used)) static void
FUNC7 (FILE *file, rtx insn)
{
  const char *name = FUNC4 (insn);

  switch (FUNC3 (insn))
    {
    case LABEL_WEAK_ENTRY:
#ifdef ASM_WEAKEN_LABEL
      ASM_WEAKEN_LABEL (file, name);
#endif
    case LABEL_GLOBAL_ENTRY:
      targetm.asm_out.globalize_label (file, name);
    case LABEL_STATIC_ENTRY:
#ifdef ASM_OUTPUT_TYPE_DIRECTIVE
      ASM_OUTPUT_TYPE_DIRECTIVE (file, name, "function");
#endif
      FUNC0 (file, name);
      break;

    case LABEL_NORMAL:
    default:
      FUNC5 ();
    }
}