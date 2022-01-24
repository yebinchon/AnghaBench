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
struct stat {int st_size; } ;
struct sec_add {int size; int* content; int /*<<< orphan*/ * name; } ;
struct elfcopy {scalar_t__ oed; int /*<<< orphan*/  flags; int /*<<< orphan*/  v_sadd; int /*<<< orphan*/ * debuglink; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ELFDATA2LSB ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SEC_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sec_add*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int,int) ; 
 int* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 void* FUNC11 (int) ; 
 int FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  sadd_list ; 
 int FUNC13 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/ * FUNC14 (char*) ; 
 scalar_t__ FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int*,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC17(struct elfcopy *ecp)
{
	struct sec_add	*sa;
	struct stat	 sb;
	FILE		*fp;
	char		*fnbase, *buf;
	int		 crc_off;
	int		 crc;

	if (ecp->debuglink == NULL)
		return;

	/* Read debug file content. */
	if ((sa = FUNC11(sizeof(*sa))) == NULL)
		FUNC4(EXIT_FAILURE, "malloc failed");
	if ((sa->name = FUNC14(".gnu_debuglink")) == NULL)
		FUNC4(EXIT_FAILURE, "strdup failed");
	if (FUNC13(ecp->debuglink, &sb) == -1)
		FUNC4(EXIT_FAILURE, "stat failed");
	if (sb.st_size == 0)
		FUNC5(EXIT_FAILURE, "empty debug link target %s",
		    ecp->debuglink);
	if ((buf = FUNC11(sb.st_size)) == NULL)
		FUNC4(EXIT_FAILURE, "malloc failed");
	if ((fp = FUNC8(ecp->debuglink, "r")) == NULL)
		FUNC4(EXIT_FAILURE, "can not open %s", ecp->debuglink);
	if (FUNC9(buf, 1, sb.st_size, fp) == 0 ||
	    FUNC7(fp))
		FUNC4(EXIT_FAILURE, "fread failed");
	FUNC6(fp);

	/* Calculate crc checksum.  */
	crc = FUNC2(buf, sb.st_size, 0xFFFFFFFF);
	FUNC10(buf);

	/* Calculate section size and the offset to store crc checksum. */
	if ((fnbase = FUNC1(ecp->debuglink)) == NULL)
		FUNC4(EXIT_FAILURE, "basename failed");
	crc_off = FUNC12(FUNC15(fnbase) + 1, 4);
	sa->size = crc_off + 4;

	/* Section content. */
	if ((sa->content = FUNC3(1, sa->size)) == NULL)
		FUNC4(EXIT_FAILURE, "malloc failed");
	FUNC16(sa->content, fnbase, FUNC15(fnbase));
	if (ecp->oed == ELFDATA2LSB) {
		sa->content[crc_off] = crc & 0xFF;
		sa->content[crc_off + 1] = (crc >> 8) & 0xFF;
		sa->content[crc_off + 2] = (crc >> 16) & 0xFF;
		sa->content[crc_off + 3] = crc >> 24;
	} else {
		sa->content[crc_off] = crc >> 24;
		sa->content[crc_off + 1] = (crc >> 16) & 0xFF;
		sa->content[crc_off + 2] = (crc >> 8) & 0xFF;
		sa->content[crc_off + 3] = crc & 0xFF;
	}

	FUNC0(&ecp->v_sadd, sa, sadd_list);
	ecp->flags |= SEC_ADD;
}