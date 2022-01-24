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
struct spec_name {int dummy; } ;
struct elfdump {int options; char* filename; int /*<<< orphan*/ * archive; int /*<<< orphan*/  flags; int /*<<< orphan*/  snl; int /*<<< orphan*/ * out; } ;

/* Variables and functions */
 void* ED_ALL ; 
 int ED_CHECKSUM ; 
 int ED_DYN ; 
 int ED_EHDR ; 
 int ED_GOT ; 
 int ED_HASH ; 
 int ED_INTERP ; 
 int ED_NOTE ; 
 int ED_PHDR ; 
 int ED_REL ; 
 int ED_SHDR ; 
 int ED_SYMTAB ; 
 int ED_SYMVER ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 scalar_t__ EV_NONE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  ONLY_ARSYM ; 
 int /*<<< orphan*/  PRINT_ARSYM ; 
 int /*<<< orphan*/  PRINT_FILENAME ; 
 int /*<<< orphan*/  SOLARIS_FMT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct spec_name*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct elfdump*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct elfdump*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  elfdump_longopts ; 
 char* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct spec_name* FUNC12 (struct elfdump*,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int FUNC14 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct elfdump*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,char*) ; 
 int /*<<< orphan*/  sn_list ; 
 int /*<<< orphan*/  spec_name ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC17 () ; 

int
FUNC18(int ac, char **av)
{
	struct elfdump		*ed, ed_storage;
	struct spec_name	*sn;
	int			 ch, i;

	ed = &ed_storage;
	FUNC15(ed, 0, sizeof(*ed));
	FUNC2(&ed->snl);
	ed->out = stdout;
	while ((ch = FUNC14(ac, av, "acdeiGHhknN:prsSvVw:",
		elfdump_longopts, NULL)) != -1)
		switch (ch) {
		case 'a':
			ed->options = ED_ALL;
			break;
		case 'c':
			ed->options |= ED_SHDR;
			break;
		case 'd':
			ed->options |= ED_DYN;
			break;
		case 'e':
			ed->options |= ED_EHDR;
			break;
		case 'i':
			ed->options |= ED_INTERP;
			break;
		case 'G':
			ed->options |= ED_GOT;
			break;
		case 'h':
			ed->options |= ED_HASH;
			break;
		case 'k':
			ed->options |= ED_CHECKSUM;
			break;
		case 'n':
			ed->options |= ED_NOTE;
			break;
		case 'N':
			FUNC4(ed, optarg);
			break;
		case 'p':
			ed->options |= ED_PHDR;
			break;
		case 'r':
			ed->options |= ED_REL;
			break;
		case 's':
			ed->options |= ED_SYMTAB;
			break;
		case 'S':
			ed->flags |= SOLARIS_FMT;
			break;
		case 'v':
			ed->options |= ED_SYMVER;
			break;
		case 'V':
			(void) FUNC16("%s (%s)\n", FUNC0(),
			    FUNC8());
			FUNC11(EXIT_SUCCESS);
			break;
		case 'w':
			if ((ed->out = FUNC13(optarg, "w")) == NULL)
				FUNC9(EXIT_FAILURE, "%s", optarg);
			break;
		case '?':
		case 'H':
		default:
			FUNC17();
		}

	ac -= optind;
	av += optind;

	if (ed->options == 0)
		ed->options = ED_ALL;
	sn = NULL;
	if (ed->options & ED_SYMTAB &&
	    (FUNC1(&ed->snl) || (sn = FUNC12(ed, "ARSYM")) != NULL)) {
		ed->flags |= PRINT_ARSYM;
		if (sn != NULL) {
			FUNC3(&ed->snl, sn, spec_name, sn_list);
			if (FUNC1(&ed->snl))
				ed->flags |= ONLY_ARSYM;
		}
	}
	if (ac == 0)
		FUNC17();
	if (ac > 1)
		ed->flags |= PRINT_FILENAME;
	if (FUNC7(EV_CURRENT) == EV_NONE)
		FUNC10(EXIT_FAILURE, "ELF library initialization failed: %s",
		    FUNC5(-1));

	for (i = 0; i < ac; i++) {
		ed->filename = av[i];
		ed->archive = NULL;
		FUNC6(ed);
	}

	FUNC11(EXIT_SUCCESS);
}