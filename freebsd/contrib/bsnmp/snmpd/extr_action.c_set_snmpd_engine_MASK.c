#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  engine ;
struct TYPE_2__ {size_t engine_len; int* engine_id; int engine_boots; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int SNMP_ENGINE_ID_SIZ ; 
 char* engine_file ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int*) ; 
 TYPE_1__ snmpd_engine ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

int
FUNC7(void)
{
	FILE *fp;
	uint32_t i;
	uint8_t *cptr, engine[2 * SNMP_ENGINE_ID_SIZ + 2];
	uint8_t myengine[2 * SNMP_ENGINE_ID_SIZ + 2];

	if (engine_file[0] == '\0')
		return (-1);

	cptr = myengine;
	for (i = 0; i < snmpd_engine.engine_len; i++)
		cptr += FUNC5(cptr, "%.2x", snmpd_engine.engine_id[i]);
	*cptr++ = '\n';
	*cptr++ = '\0';

	if ((fp = FUNC2(engine_file, "r+")) != NULL) {
		if (FUNC1(engine, sizeof(engine) - 1, fp) == NULL ||
		    FUNC4(fp, "%u",  &snmpd_engine.engine_boots) <= 0) {
			FUNC0(fp);
			goto save_boots;
		}

		FUNC0(fp);
		if (FUNC6(myengine, engine) != 0)
			snmpd_engine.engine_boots = 1;
		else
			snmpd_engine.engine_boots++;
	} else if (errno != ENOENT)
		return (-1);

save_boots:
	if ((fp = FUNC2(engine_file, "w+")) == NULL)
		return (-1);
	FUNC3(fp, "%s%u\n", myengine, snmpd_engine.engine_boots);
	FUNC0(fp);

	return (0);
}