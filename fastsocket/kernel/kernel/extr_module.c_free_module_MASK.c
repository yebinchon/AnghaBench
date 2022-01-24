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
struct module {int /*<<< orphan*/  module_core; int /*<<< orphan*/  core_size; scalar_t__ refptr; scalar_t__ percpu; int /*<<< orphan*/  args; int /*<<< orphan*/  module_init; int /*<<< orphan*/  num_kp; int /*<<< orphan*/  kp; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  __unlink_module ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct module*) ; 
 int /*<<< orphan*/  FUNC5 (struct module*) ; 
 int /*<<< orphan*/  FUNC6 (struct module*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct module*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct module*) ; 
 int /*<<< orphan*/  FUNC10 (struct module*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct module*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct module*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct module *mod)
{
	FUNC12(mod);

	/* Delete from various lists */
	FUNC11(__unlink_module, mod, NULL);
	FUNC9(mod);
	FUNC10(mod);
	FUNC4(mod);

	/* Remove dynamic debug info */
	FUNC0(mod->name);

	/* Arch-specific cleanup. */
	FUNC5(mod);

	/* Module unload stuff */
	FUNC7(mod);

	/* Free any allocated parameters. */
	FUNC1(mod->kp, mod->num_kp);

	/* This may be NULL, but that's OK */
	FUNC6(mod, mod->module_init);
	FUNC2(mod->args);
	if (mod->percpu)
		FUNC8(mod->percpu);
#if defined(CONFIG_MODULE_UNLOAD) && defined(CONFIG_SMP)
	if (mod->refptr)
		percpu_modfree(mod->refptr);
#endif
	/* Free lock-classes: */
	FUNC3(mod->module_core, mod->core_size);

	/* Finally, free the core (containing the module structure) */
	FUNC6(mod, mod->module_core);

#ifdef CONFIG_MPU
	update_protections(current->mm);
#endif
}