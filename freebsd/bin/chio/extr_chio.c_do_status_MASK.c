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
typedef  int u_int16_t ;
struct changer_params {int cp_npickers; int cp_nslots; int cp_nportals; int cp_ndrives; } ;
struct changer_element_status_request {int cesr_element_type; int cesr_element_base; int cesr_element_count; struct changer_element_status* cesr_element_status; int /*<<< orphan*/  cesr_flags; } ;
struct TYPE_4__ {char* cv_volid; int cv_serial; } ;
struct TYPE_3__ {char* cv_volid; int cv_serial; } ;
struct changer_element_status {int ces_addr; int ces_flags; int ces_sensecode; int ces_sensequal; int ces_source_addr; int ces_int_addr; int ces_scsi_id; int ces_scsi_lun; scalar_t__ ces_designator_length; int /*<<< orphan*/  ces_code_set; int /*<<< orphan*/  ces_designator; int /*<<< orphan*/  ces_source_type; TYPE_2__ ces_avoltag; TYPE_1__ ces_pvoltag; } ;
typedef  int /*<<< orphan*/  cesr ;

/* Variables and functions */
 int /*<<< orphan*/  CESR_VOLTAGS ; 
 int /*<<< orphan*/  CESTATUS_BITS ; 
 int CES_LUN_VALID ; 
 int CES_SCSIID_VALID ; 
 int CES_SOURCE_VALID ; 
#define  CHET_DT 131 
#define  CHET_IE 130 
#define  CHET_MT 129 
#define  CHET_ST 128 
 int /*<<< orphan*/  CHIOGPARAMS ; 
 int /*<<< orphan*/  CHIOGSTATUS ; 
 scalar_t__ FUNC0 (char*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct changer_element_status_request*,int) ; 
 scalar_t__ FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  changer_fd ; 
 char* changer_name ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct changer_element_status*) ; 
 int FUNC9 (int,char**,char*) ; 
 char* FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int optind ; 
 int optreset ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 

__attribute__((used)) static int
FUNC17(const char *cname, int argc, char **argv)
{
	struct changer_params cp;
	struct changer_element_status_request cesr;
	int i;
	u_int16_t base, count, chet, schet, echet;
	const char *description;
	int pvoltag = 0;
	int avoltag = 0;
	int sense = 0;
	int scsi = 0;
	int source = 0;
	int intaddr = 0;
	int c;

	count = 0;
	base = 0;
	description = NULL;

	optind = optreset = 1;
	while ((c = FUNC9(argc, argv, "vVsSbaI")) != -1) {
		switch (c) {
		case 'v':
			pvoltag = 1;
			break;
		case 'V':
			avoltag = 1;
			break;
		case 's':
			sense = 1;
			break;
		case 'S':
			source = 1;
			break;
		case 'b':
			scsi = 1;
			break;
		case 'I':
			intaddr = 1;
			break;
		case 'a':
			pvoltag = avoltag = source = sense = scsi = intaddr = 1;
			break;
		default:
			FUNC16("%s: bad option", cname);
			goto usage;
		}
	}

	argc -= optind;
	argv += optind;

	/*
	 * On a status command, we expect the following:
	 *
	 * [<ET> [<start> [<end>] ] ]
	 *
	 * where ET == element type, start == first element to report,
	 * end == number of elements to report
	 *
	 * If we get no arguments, we get the status of all
	 * known element types.
	 */
	if (argc > 3) {
		FUNC16("%s: too many arguments", cname);
		goto usage;
	}

	/*
	 * Get params from changer.  Specifically, we need the element
	 * counts.
	 */
	if (FUNC11(changer_fd, CHIOGPARAMS, (char *)&cp))
		FUNC5(1, "%s: CHIOGPARAMS", changer_name);

	if (argc > 0)
		schet = echet = FUNC12(argv[0]);
	else {
		schet = CHET_MT;
		echet = CHET_DT;
	}
	if (argc > 1) {
		base = (u_int16_t)FUNC0(argv[1]);
		count = 1;
	}
	if (argc > 2)
		count = (u_int16_t)FUNC0(argv[2]) - base + 1;

	for (chet = schet; chet <= echet; ++chet) {
		switch (chet) {
		case CHET_MT:
			if (count == 0) 
				count = cp.cp_npickers;
			else if (count > cp.cp_npickers)
				FUNC6(1, "not that many pickers in device");
			description = "picker";
			break;

		case CHET_ST:
			if (count == 0) 
				count = cp.cp_nslots;
			else if (count > cp.cp_nslots)
				FUNC6(1, "not that many slots in device");
			description = "slot";
			break;

		case CHET_IE:
			if (count == 0) 
				count = cp.cp_nportals;
			else if (count > cp.cp_nportals)
				FUNC6(1, "not that many portals in device");
			description = "portal";
			break;

		case CHET_DT:
			if (count == 0) 
				count = cp.cp_ndrives;
			else if (count > cp.cp_ndrives)
				FUNC6(1, "not that many drives in device");
			description = "drive";
			break;
 
 		default:
 			/* To appease gcc -Wuninitialized. */
 			count = 0;
 			description = NULL;
		}

		if (count == 0) {
			if (argc == 0)
				continue;
			else {
				FUNC14("%s: no %s elements\n",
				    changer_name, description);
				return (0);
			}
		}

		FUNC2(&cesr, sizeof(cesr));
		cesr.cesr_element_type = chet;
		cesr.cesr_element_base = base;
		cesr.cesr_element_count = count;
		/* Allocate storage for the status structures. */
		cesr.cesr_element_status =
		  (struct changer_element_status *) 
		  FUNC3((size_t)count, sizeof(struct changer_element_status));
		
		if (!cesr.cesr_element_status)
			FUNC6(1, "can't allocate status storage");

		if (avoltag || pvoltag)
			cesr.cesr_flags |= CESR_VOLTAGS;

		if (FUNC11(changer_fd, CHIOGSTATUS, (char *)&cesr)) {
			FUNC8(cesr.cesr_element_status);
			FUNC5(1, "%s: CHIOGSTATUS", changer_name);
		}

		/* Dump the status for each reported element. */
		for (i = 0; i < count; ++i) {
			struct changer_element_status *ces =
			         &(cesr.cesr_element_status[i]);
			FUNC14("%s %d: %s", description, ces->ces_addr,
			    FUNC1(ces->ces_flags,
					   CESTATUS_BITS));
			if (sense)
				FUNC14(" sense: <0x%02x/0x%02x>",
				       ces->ces_sensecode, 
				       ces->ces_sensequal);
			if (pvoltag)
				FUNC14(" voltag: <%s:%d>", 
				       ces->ces_pvoltag.cv_volid,
				       ces->ces_pvoltag.cv_serial);
			if (avoltag)
				FUNC14(" avoltag: <%s:%d>", 
				       ces->ces_avoltag.cv_volid,
				       ces->ces_avoltag.cv_serial);
			if (source) {
				if (ces->ces_flags & CES_SOURCE_VALID)
					FUNC14(" source: <%s %d>", 
					       FUNC4(
						       ces->ces_source_type),
					       ces->ces_source_addr);
				else
					FUNC14(" source: <>");
			}
			if (intaddr)
				FUNC14(" intaddr: <%d>", ces->ces_int_addr);
			if (scsi) {
				FUNC14(" scsi: <");
				if (ces->ces_flags & CES_SCSIID_VALID)
					FUNC14("%d", ces->ces_scsi_id);
				else
					FUNC15('?');
				FUNC15(':');
				if (ces->ces_flags & CES_LUN_VALID)
					FUNC14("%d", ces->ces_scsi_lun);
				else
					FUNC15('?');
				FUNC15('>');
			}
			if (ces->ces_designator_length > 0)
				FUNC13(ces->ces_designator,
						 ces->ces_code_set,
						 ces->ces_designator_length);
			FUNC15('\n');
		}

		FUNC8(cesr.cesr_element_status);
		count = 0;
	}

	return (0);

 usage:
	(void) FUNC7(stderr, "usage: %s %s [-vVsSbaA] [<element type> [<start-addr> [<end-addr>] ] ]\n",
		       FUNC10(), cname);
	return (1);
}