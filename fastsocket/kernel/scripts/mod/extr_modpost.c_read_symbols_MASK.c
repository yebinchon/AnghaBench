#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct module {int skip; int gpl_compatible; int /*<<< orphan*/  unres; int /*<<< orphan*/  srcversion; } ;
struct elf_info {char* strtab; scalar_t__ hdr; scalar_t__ modinfo; int /*<<< orphan*/  modinfo_len; TYPE_1__* symtab_stop; TYPE_1__* symtab_start; } ;
struct TYPE_4__ {int st_name; } ;
typedef  TYPE_1__ Elf_Sym ;

/* Variables and functions */
 scalar_t__ all_versions ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct module*,char*,struct elf_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct elf_info*,struct module*) ; 
 char* FUNC3 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (scalar_t__,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct module*,struct elf_info*,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct module*,struct elf_info*,TYPE_1__*,char const*) ; 
 int have_vmlinux ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,scalar_t__,int) ; 
 scalar_t__ modversions ; 
 struct module* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct elf_info*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct elf_info*) ; 
 scalar_t__ vmlinux_section_warnings ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 

__attribute__((used)) static void FUNC15(char *modname)
{
	const char *symname;
	char *version;
	char *license;
	struct module *mod;
	struct elf_info info = { };
	Elf_Sym *sym;

	if (!FUNC12(&info, modname))
		return;

	mod = FUNC11(modname);

	/* When there's no vmlinux, don't print warnings about
	 * unresolved symbols (since there'll be too many ;) */
	if (FUNC8(modname)) {
		have_vmlinux = 1;
		mod->skip = 1;
	}

	license = FUNC3(info.modinfo, info.modinfo_len, "license");
	if (info.modinfo && !license && !FUNC8(modname))
		FUNC14("modpost: missing MODULE_LICENSE() in %s\n"
		     "see include/linux/module.h for "
		     "more information\n", modname);
	while (license) {
		if (FUNC9(license))
			mod->gpl_compatible = 1;
		else {
			mod->gpl_compatible = 0;
			break;
		}
		license = FUNC4(info.modinfo, info.modinfo_len,
					   "license", license);
	}

	for (sym = info.symtab_start; sym < info.symtab_stop; sym++) {
		symname = info.strtab + sym->st_name;

		FUNC7(mod, &info, sym, symname);
		FUNC6(mod, &info, sym, symname);
	}
	if (!FUNC8(modname) ||
	     (FUNC8(modname) && vmlinux_section_warnings))
		FUNC1(mod, modname, &info);

	version = FUNC3(info.modinfo, info.modinfo_len, "version");
	if (version)
		FUNC10(modname, version, info.modinfo,
				       version - (char *)info.hdr);
	if (version || (all_versions && !FUNC8(modname)))
		FUNC5(modname, mod->srcversion,
				sizeof(mod->srcversion)-1);

	FUNC2(&info, mod);

	FUNC13(&info);

	/* Our trick to get versioning for module struct etc. - it's
	 * never passed as an argument to an exported function, so
	 * the automatic versioning doesn't pick it up, but it's really
	 * important anyhow */
	if (modversions)
		mod->unres = FUNC0("module_layout", 0, mod->unres);
}