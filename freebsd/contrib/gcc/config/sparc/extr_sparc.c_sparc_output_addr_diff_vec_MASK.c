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
struct TYPE_3__ {int /*<<< orphan*/  (* internal_label ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ targetm ; 

__attribute__((used)) static void 
FUNC10 (rtx vec)
{
  rtx lab = FUNC6 (vec, 0), body = FUNC6 (vec, 1);
  rtx base = FUNC6 (FUNC6 (body, 0), 0);
  int idx, vlen = FUNC8 (body, 1);

#ifdef ASM_OUTPUT_ADDR_VEC_START  
  ASM_OUTPUT_ADDR_VEC_START (asm_out_file);
#endif

#ifdef ASM_OUTPUT_CASE_LABEL
  ASM_OUTPUT_CASE_LABEL (asm_out_file, "L", CODE_LABEL_NUMBER (lab),
			 NEXT_INSN (lab));
#else
  (*targetm.asm_out.internal_label) (asm_out_file, "L", FUNC4 (lab));
#endif

  for (idx = 0; idx < vlen; idx++)
    {
      FUNC0
        (asm_out_file,
         body,
         FUNC4 (FUNC6 (FUNC7 (body, 1, idx), 0)),
         FUNC4 (base));
    }
    
#ifdef ASM_OUTPUT_ADDR_VEC_END
  ASM_OUTPUT_ADDR_VEC_END (asm_out_file);
#endif
}