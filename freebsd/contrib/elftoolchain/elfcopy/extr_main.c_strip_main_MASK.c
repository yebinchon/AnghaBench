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
struct sec_action {int remove; } ;
struct elfcopy {int flags; scalar_t__ strip; } ;

/* Variables and functions */
 int DISCARD_LLABEL ; 
 int DISCARD_LOCAL ; 
#define  ECP_ONLY_DEBUG 129 
#define  ECP_STRIP_UNNEEDED 128 
 int PRESERVE_DATE ; 
 int SEC_REMOVE ; 
 void* STRIP_ALL ; 
 scalar_t__ STRIP_DEBUG ; 
 scalar_t__ STRIP_NONDEBUG ; 
 scalar_t__ STRIP_UNNEEDED ; 
 int /*<<< orphan*/  SYMOP_KEEP ; 
 int /*<<< orphan*/  SYMOP_STRIP ; 
 int WILDCARD ; 
 int /*<<< orphan*/  FUNC0 (struct elfcopy*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct elfcopy*,char*,char const*) ; 
 int FUNC2 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sec_action* FUNC3 (struct elfcopy*,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct elfcopy*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct elfcopy*,char*) ; 
 int /*<<< orphan*/  strip_longopts ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(struct elfcopy *ecp, int argc, char **argv)
{
	struct sec_action	*sac;
	const char		*outfile;
	int			 opt;
	int			 i;

	outfile = NULL;
	while ((opt = FUNC2(argc, argv, "hI:K:N:o:O:pR:sSdgVxXw",
	    strip_longopts, NULL)) != -1) {
		switch(opt) {
		case 'R':
			sac = FUNC3(ecp, optarg, 1);
			sac->remove = 1;
			ecp->flags |= SEC_REMOVE;
			break;
		case 's':
			ecp->strip = STRIP_ALL;
			break;
		case 'S':
		case 'g':
		case 'd':
			ecp->strip = STRIP_DEBUG;
			break;
		case 'I':
			/* ignored */
			break;
		case 'K':
			FUNC0(ecp, optarg, NULL, SYMOP_KEEP);
			break;
		case 'N':
			FUNC0(ecp, optarg, NULL, SYMOP_STRIP);
			break;
		case 'o':
			outfile = optarg;
			break;
		case 'O':
			FUNC6(ecp, optarg);
			break;
		case 'p':
			ecp->flags |= PRESERVE_DATE;
			break;
		case 'V':
			FUNC5();
			break;
		case 'w':
			ecp->flags |= WILDCARD;
			break;
		case 'x':
			ecp->flags |= DISCARD_LOCAL;
			break;
		case 'X':
			ecp->flags |= DISCARD_LLABEL;
			break;
		case ECP_ONLY_DEBUG:
			ecp->strip = STRIP_NONDEBUG;
			break;
		case ECP_STRIP_UNNEEDED:
			ecp->strip = STRIP_UNNEEDED;
			break;
		case 'h':
		default:
			FUNC7();
		}
	}

	argc -= optind;
	argv += optind;

	if (ecp->strip == 0 &&
	    ((ecp->flags & DISCARD_LOCAL) == 0) &&
	    ((ecp->flags & DISCARD_LLABEL) == 0) &&
	    FUNC4(ecp, NULL, SYMOP_STRIP) == NULL)
		ecp->strip = STRIP_ALL;
	if (argc == 0)
		FUNC7();
	/*
	 * Only accept a single input file if an output file had been
	 * specified.
	 */
	if (outfile != NULL && argc != 1)
		FUNC7();

	for (i = 0; i < argc; i++)
		FUNC1(ecp, argv[i], outfile);
}