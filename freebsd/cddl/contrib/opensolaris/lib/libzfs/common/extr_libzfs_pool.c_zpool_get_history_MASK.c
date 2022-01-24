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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int uint_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ HIS_BUF_LEN_DEF ; 
 scalar_t__ HIS_BUF_LEN_MAX ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  ZPOOL_HIST_RECORD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__*,scalar_t__*) ; 
 char* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (char*,scalar_t__,scalar_t__*,int /*<<< orphan*/ ***,int*) ; 

int
FUNC8(zpool_handle_t *zhp, nvlist_t **nvhisp)
{
	char *buf;
	uint64_t buflen = HIS_BUF_LEN_DEF;
	uint64_t off = 0;
	nvlist_t **records = NULL;
	uint_t numrecords = 0;
	int err, i;

	buf = FUNC2(buflen);
	if (buf == NULL)
		return (ENOMEM);
	do {
		uint64_t bytes_read = buflen;
		uint64_t leftover;

		if ((err = FUNC1(zhp, buf, &off, &bytes_read)) != 0)
			break;

		/* if nothing else was read in, we're at EOF, just return */
		if (bytes_read == 0)
			break;

		if ((err = FUNC7(buf, bytes_read,
		    &leftover, &records, &numrecords)) != 0)
			break;
		off -= leftover;
		if (leftover == bytes_read) {
			/*
			 * no progress made, because buffer is not big enough
			 * to hold this record; resize and retry.
			 */
			buflen *= 2;
			FUNC0(buf);
			buf = NULL;
			if ((buflen >= HIS_BUF_LEN_MAX) ||
			    ((buf = FUNC2(buflen)) == NULL)) {
				err = ENOMEM;
				break;
			}
		}

		/* CONSTCOND */
	} while (1);

	FUNC0(buf);

	if (!err) {
		FUNC6(FUNC4(nvhisp, NV_UNIQUE_NAME, 0) == 0);
		FUNC6(FUNC3(*nvhisp, ZPOOL_HIST_RECORD,
		    records, numrecords) == 0);
	}
	for (i = 0; i < numrecords; i++)
		FUNC5(records[i]);
	FUNC0(records);

	return (err);
}