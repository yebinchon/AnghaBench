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
struct TYPE_4__ {int* e_ident; } ;
typedef  TYPE_1__ GElf_Ehdr ;
typedef  scalar_t__ Elf_Kind ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 size_t EI_OSABI ; 
 int ELFOSABI_NONE ; 
 int /*<<< orphan*/  ELF_C_RDWR ; 
 int /*<<< orphan*/  ELF_C_READ ; 
 int /*<<< orphan*/  ELF_C_SET ; 
 int /*<<< orphan*/  ELF_C_WRITE ; 
 int /*<<< orphan*/  ELF_F_LAYOUT ; 
 scalar_t__ ELF_K_AR ; 
 scalar_t__ ELF_K_ELF ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 scalar_t__ EV_NONE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  brandelf_longopts ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC15 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC16 (int) ; 
 int FUNC17 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 

int
FUNC23(int argc, char **argv)
{
	GElf_Ehdr ehdr;
	Elf *elf;
	Elf_Kind kind;
	int type = ELFOSABI_NONE;
	int retval = 0;
	int ch, change = 0, force = 0, listed = 0;

	if (FUNC8(EV_CURRENT) == EV_NONE)
		FUNC10(EXIT_FAILURE, "elf_version error");

	while ((ch = FUNC15(argc, argv, "Vf:hlt:v", brandelf_longopts,
		NULL)) != -1)
		switch (ch) {
		case 'f':
			if (change)
				FUNC10(EXIT_FAILURE, "ERROR: the -f option is "
				    "incompatible with the -t option.");
			force = 1;
			type = FUNC0(optarg);
			if (errno == ERANGE || type < 0 || type > 255) {
				FUNC22("ERROR: invalid argument to option "
				    "-f: %s", optarg);
				FUNC20();
			}
			break;
		case 'h':
			FUNC20();
			break;
		case 'l':
			FUNC18();
			listed = 1;
			break;
		case 'v':
			/* This flag is ignored. */
			break;
		case 't':
			if (force)
				FUNC10(EXIT_FAILURE, "the -t option is "
				    "incompatible with the -f option.");
			if ((type = FUNC9(optarg)) == -1) {
				FUNC22("ERROR: invalid ELF type '%s'", optarg);
				FUNC20();
			}

			change = 1;
			break;
		case 'V':
			FUNC19();
			break;
		default:
			FUNC20();
	}
	argc -= optind;
	argv += optind;
	if (!argc) {
		if (listed)
			FUNC11(0);
		else {
			FUNC22("no file(s) specified");
			FUNC20();
		}
	}

	while (argc) {
		int fd;

		elf = NULL;

		if ((fd = FUNC17(argv[0], (change || force) ? O_RDWR :
		    O_RDONLY, 0)) < 0) {
			FUNC21("error opening file %s", argv[0]);
			retval = 1;
			goto fail;
		}

		if ((elf = FUNC2(fd, (change || force) ? ELF_C_RDWR :
		    ELF_C_READ, NULL)) == NULL) {
			FUNC22("elf_begin failed: %s", FUNC4(-1));
			retval = 1;
			goto fail;
		}

		if ((kind = FUNC6(elf)) != ELF_K_ELF) {
			if (kind == ELF_K_AR)
				FUNC22("file '%s' is an archive.", argv[0]);
			else
				FUNC22("file '%s' is not an ELF file.",
				    argv[0]);
			retval = 1;
			goto fail;
		}

		if (FUNC13(elf, &ehdr) == NULL) {
			FUNC22("gelf_getehdr: %s", FUNC4(-1));
			retval = 1;
			goto fail;
		}

		if (!change && !force) {
			FUNC12(stdout,
			    "File '%s' is of brand '%s' (%u).\n",
			    argv[0], FUNC16(ehdr.e_ident[EI_OSABI]),
			    ehdr.e_ident[EI_OSABI]);
			if (!FUNC16(type)) {
				FUNC22("ELF ABI Brand '%u' is unknown",
				      type);
				FUNC18();
			}
		} else {

			/*
			 * Keep the existing layout of the ELF object.
			 */
			if (FUNC5(elf, ELF_C_SET, ELF_F_LAYOUT) == 0) {
				FUNC22("elf_flagelf failed: %s",
				    FUNC4(-1));
				retval = 1;
				goto fail;
			}

			/*
			 * Update the ABI type.
			 */
			ehdr.e_ident[EI_OSABI] = (unsigned char) type;
			if (FUNC14(elf, &ehdr) == 0) {
				FUNC22("gelf_update_ehdr error: %s",
				    FUNC4(-1));
				retval = 1;
				goto fail;
			}

			/*
			 * Write back changes.
			 */
			if (FUNC7(elf, ELF_C_WRITE) == -1) {
				FUNC22("elf_update error: %s", FUNC4(-1));
				retval = 1;
				goto fail;
			}
		}
fail:

		if (elf)
			FUNC3(elf);

		if (fd >= 0 && FUNC1(fd) == -1) {
			FUNC22("%s: close error", argv[0]);
			retval = 1;
		}

		argc--;
		argv++;
	}

	return (retval);
}