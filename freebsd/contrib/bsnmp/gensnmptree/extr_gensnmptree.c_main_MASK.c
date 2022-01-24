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
struct node {int dummy; } ;
typedef  enum op { ____Placeholder_op } op ;
typedef  enum gen_funcs { ____Placeholder_gen_funcs } gen_funcs ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int GEN_FUNCS_C ; 
 int GEN_FUNCS_H ; 
 int GEN_FUNCS_NONE ; 
 scalar_t__ MAXPATHLEN ; 
#define  OP_ENUMS 131 
#define  OP_EXTRACT 130 
#define  OP_GEN 129 
#define  OP_TREE 128 
 int TOK_EOF ; 
 int /*<<< orphan*/  FUNC0 (struct node*) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* file_prefix ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct node*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct node*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char**,char*) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int localincs ; 
 int /*<<< orphan*/  FUNC11 (int,char**,int) ; 
 int /*<<< orphan*/  FUNC12 (struct node*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct node**,struct node*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 struct node* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC16 (char*) ; 
 char* usgtxt ; 

int
FUNC17(int argc, char *argv[])
{
	enum op op = OP_GEN;
	enum gen_funcs gen_funcs = GEN_FUNCS_NONE;

	char *infile = NULL;

	int opt;
	while ((opt = FUNC8(argc, argv, "dEeFfhI:i:lp:t")) != EOF)
		switch (opt) {

		  case 'd':
			debug = 1;
			break;

		  case 'E':
			if (op != OP_GEN && op != OP_ENUMS)
				FUNC2(1, "-E conflicts with earlier options");
			op = OP_ENUMS;
			break;

		  case 'e':
			if (op != OP_GEN && op != OP_EXTRACT)
				FUNC2(1, "-e conflicts with earlier options");
			op = OP_EXTRACT;
			break;

		  case 'F':
			if (gen_funcs != GEN_FUNCS_NONE &&
			    gen_funcs != GEN_FUNCS_C)
				FUNC2(1, "-F conflicts with -f");
			gen_funcs = GEN_FUNCS_C;
			break;

		  case 'f':
			if (gen_funcs != GEN_FUNCS_NONE &&
			    gen_funcs != GEN_FUNCS_H)
				FUNC2(1, "-f conflicts with -F");
			gen_funcs = GEN_FUNCS_H;
			break;

		  case 'h':
			FUNC5(stderr, "%s", usgtxt);
			FUNC3(0);

		  case 'I':
			FUNC15(optarg);
			break;

		  case 'i':
			infile = optarg;
			break;

		  case 'l':
			localincs = 1;
			break;

		  case 'p':
			file_prefix = optarg;
			if (FUNC16(file_prefix) + FUNC16("tree.c") >
			    MAXPATHLEN)
				FUNC2(1, "prefix too long");
			break;

		  case 't':
			if (op != OP_GEN && op != OP_TREE)
				FUNC2(1, "-t conflicts with earlier options");
			op = OP_TREE;
			break;
		}

	argc -= optind;
	argv += optind;

	/* open input */
	if (infile == NULL) {
		FUNC10(stdin, NULL, "<stdin>");
	} else {
		FILE *fp;
		if ((fp = FUNC4(infile, "r")) == NULL)
			FUNC1(1, "%s", infile);
		FUNC10(fp, NULL, infile);
	}

	/* parse and check input */
	struct node *root = FUNC14(FUNC9());

	int tok;
	while ((tok = FUNC9()) != TOK_EOF)
		FUNC13(&root, FUNC14(tok));

	if (root)
		FUNC0(root);

	/* do what the user has requested */
	switch (op) {

	  case OP_EXTRACT:
		if (argc == 0)
			FUNC2(1, "-e requires arguments");

		for (int i = 0; i < argc; i++)
			if (FUNC6(stdout, root, argv[i]))
				FUNC2(1, "object not found: %s", argv[i]);
		return (0);

	  case OP_ENUMS:
		FUNC11(argc, argv, gen_funcs);
		return (0);

	  case OP_TREE:
		if (argc != 0)
			FUNC2(1, "-t allows no arguments");
		FUNC7(root, 0);
		return (0);

	  case OP_GEN:
		if (argc != 0)
			FUNC2(1, "tree generation allows no arguments");
		FUNC12(root, gen_funcs == GEN_FUNCS_H);
		return (0);
	}
}