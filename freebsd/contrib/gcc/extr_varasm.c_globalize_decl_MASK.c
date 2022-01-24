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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {int /*<<< orphan*/  (* globalize_label ) (int /*<<< orphan*/ ,char const*) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__ targetm ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  weak_decls ; 
 int /*<<< orphan*/  weakref_targets ; 

__attribute__((used)) static void
FUNC13 (tree decl)
{
  const char *name = FUNC10 (FUNC9 (FUNC5 (decl), 0), 0);

#if defined (ASM_WEAKEN_LABEL) || defined (ASM_WEAKEN_DECL)
  if (DECL_WEAK (decl))
    {
      tree *p, t;

#ifdef ASM_WEAKEN_DECL
      ASM_WEAKEN_DECL (asm_out_file, decl, name, 0);
#else
      ASM_WEAKEN_LABEL (asm_out_file, name);
#endif

      /* Remove this function from the pending weak list so that
	 we do not emit multiple .weak directives for it.  */
      for (p = &weak_decls; (t = *p) ; )
	{
	  if (DECL_ASSEMBLER_NAME (decl) == DECL_ASSEMBLER_NAME (TREE_VALUE (t)))
	    *p = TREE_CHAIN (t);
	  else
	    p = &TREE_CHAIN (t);
	}

      /* Remove weakrefs to the same target from the pending weakref
	 list, for the same reason.  */
      for (p = &weakref_targets; (t = *p) ; )
	{
	  if (DECL_ASSEMBLER_NAME (decl)
	      == ultimate_transparent_alias_target (&TREE_VALUE (t)))
	    *p = TREE_CHAIN (t);
	  else
	    p = &TREE_CHAIN (t);
	}

      return;
    }
#elif defined(ASM_MAKE_LABEL_LINKONCE)
  if (DECL_ONE_ONLY (decl))
    ASM_MAKE_LABEL_LINKONCE (asm_out_file, name);
#endif

  targetm.asm_out.globalize_label (asm_out_file, name);
}