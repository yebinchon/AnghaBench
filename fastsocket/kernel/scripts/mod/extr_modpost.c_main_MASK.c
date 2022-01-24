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
struct module {char* name; scalar_t__ skip; struct module* next; } ;
struct ext_sym_list {char* file; struct ext_sym_list* next; } ;
struct buffer {scalar_t__ pos; } ;

/* Variables and functions */
 struct ext_sym_list* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*,struct module*,struct module*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,struct module*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,struct module*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer*,struct module*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer*,struct module*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer*,char*) ; 
 int FUNC7 (struct buffer*,struct module*) ; 
 int all_versions ; 
 int /*<<< orphan*/  FUNC8 (struct module*) ; 
 int cross_build ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int external_module ; 
 int /*<<< orphan*/  FUNC10 (struct ext_sym_list*) ; 
 int FUNC11 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 struct module* modules ; 
 int modversions ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ sec_mismatch_count ; 
 scalar_t__ sec_mismatch_verbose ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  vmlinux_section_warnings ; 
 int /*<<< orphan*/  FUNC18 (char*,scalar_t__) ; 
 int warn_unresolved ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 

int FUNC22(int argc, char **argv)
{
	struct module *mod;
	struct buffer buf = { };
	char *kernel_read = NULL, *module_read = NULL;
	char *dump_write = NULL;
	char *markers_read = NULL;
	char *markers_write = NULL;
	int opt;
	int err;
	struct ext_sym_list *extsym_iter;
	struct ext_sym_list *extsym_start = NULL;

	while ((opt = FUNC11(argc, argv, "i:I:e:cmsSo:awM:K:")) != -1) {
		switch (opt) {
		case 'i':
			kernel_read = optarg;
			break;
		case 'I':
			module_read = optarg;
			external_module = 1;
			break;
		case 'c':
			cross_build = 1;
			break;
		case 'e':
			external_module = 1;
			extsym_iter =
			   FUNC0(FUNC12(sizeof(*extsym_iter)));
			extsym_iter->next = extsym_start;
			extsym_iter->file = optarg;
			extsym_start = extsym_iter;
			break;
		case 'm':
			modversions = 1;
			break;
		case 'o':
			dump_write = optarg;
			break;
		case 'a':
			all_versions = 1;
			break;
		case 's':
			vmlinux_section_warnings = 0;
			break;
		case 'S':
			sec_mismatch_verbose = 0;
			break;
		case 'w':
			warn_unresolved = 1;
			break;
			case 'M':
				markers_write = optarg;
				break;
			case 'K':
				markers_read = optarg;
				break;
		default:
			FUNC9(1);
		}
	}

	if (kernel_read)
		FUNC13(kernel_read, 1);
	if (module_read)
		FUNC13(module_read, 0);
	while (extsym_start) {
		FUNC13(extsym_start->file, 0);
		extsym_iter = extsym_start->next;
		FUNC10(extsym_start);
		extsym_start = extsym_iter;
	}

	while (optind < argc)
		FUNC15(argv[optind++]);

	for (mod = modules; mod; mod = mod->next) {
		if (mod->skip)
			continue;
		FUNC8(mod);
	}

	err = 0;

	for (mod = modules; mod; mod = mod->next) {
		char fname[FUNC17(mod->name) + 10];

		if (mod->skip)
			continue;

		buf.pos = 0;

		FUNC2(&buf, mod);
		FUNC6(&buf, mod->name);
		err |= FUNC7(&buf, mod);
		FUNC1(&buf, mod, modules);
		FUNC3(&buf, mod);
		FUNC5(&buf, mod);
		FUNC4(&buf, mod);

		FUNC16(fname, "%s.mod.c", mod->name);
		FUNC20(&buf, fname);
	}

	if (dump_write)
		FUNC19(dump_write);
	if (sec_mismatch_count && !sec_mismatch_verbose)
		FUNC18("modpost: Found %d section mismatch(es).\n"
		     "To see full details build your kernel with:\n"
		     "'make CONFIG_DEBUG_SECTION_MISMATCH=y'\n",
		     sec_mismatch_count);

	if (markers_read)
		FUNC14(markers_read);

	if (markers_write)
		FUNC21(markers_write);

	return err;
}