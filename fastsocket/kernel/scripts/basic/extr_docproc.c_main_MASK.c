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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 void* adddep ; 
 void* adddep2 ; 
 void* defaultline ; 
 void* docsect ; 
 void* docsection ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int exitstatus ; 
 void* externalfunctions ; 
 void* extfunc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* find_export_symbols ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC7 (char*) ; 
 void* internalfunctions ; 
 void* intfunc ; 
 int /*<<< orphan*/ * kernsrctree ; 
 void* noaction ; 
 void* noaction2 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 void* printline ; 
 void* singfunc ; 
 void* singlefunctions ; 
 int /*<<< orphan*/ * srctree ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 void* symbolsonly ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(int argc, char *argv[])
{
	FILE * infile;

	srctree = FUNC7("SRCTREE");
	if (!srctree)
		srctree = FUNC6(NULL, 0);
	kernsrctree = FUNC7("KBUILD_SRC");
	if (!kernsrctree || !*kernsrctree)
		kernsrctree = srctree;
	if (argc != 3) {
		FUNC12();
		FUNC0(1);
	}
	/* Open file, exit on error */
	infile = FUNC3(argv[2], "r");
        if (infile == NULL) {
                FUNC4(stderr, "docproc: ");
                FUNC9(argv[2]);
                FUNC0(2);
        }

	if (FUNC11("doc", argv[1]) == 0)
	{
		/* Need to do this in two passes.
		 * First pass is used to collect all symbols exported
		 * in the various files;
		 * Second pass generate the documentation.
		 * This is required because some functions are declared
		 * and exported in different files :-((
		 */
		/* Collect symbols */
		defaultline       = noaction;
		internalfunctions = find_export_symbols;
		externalfunctions = find_export_symbols;
		symbolsonly       = find_export_symbols;
		singlefunctions   = noaction2;
		docsection        = noaction2;
		FUNC8(infile);

		/* Rewind to start from beginning of file again */
		FUNC5(infile, 0, SEEK_SET);
		defaultline       = printline;
		internalfunctions = intfunc;
		externalfunctions = extfunc;
		symbolsonly       = printline;
		singlefunctions   = singfunc;
		docsection        = docsect;

		FUNC8(infile);
	}
	else if (FUNC11("depend", argv[1]) == 0)
	{
		/* Create first part of dependency chain
		 * file.tmpl */
		FUNC10("%s\t", argv[2]);
		defaultline       = noaction;
		internalfunctions = adddep;
		externalfunctions = adddep;
		symbolsonly       = adddep;
		singlefunctions   = adddep2;
		docsection        = adddep2;
		FUNC8(infile);
		FUNC10("\n");
	}
	else
	{
		FUNC4(stderr, "Unknown option: %s\n", argv[1]);
		FUNC0(1);
	}
	FUNC1(infile);
	FUNC2(stdout);
	return exitstatus;
}