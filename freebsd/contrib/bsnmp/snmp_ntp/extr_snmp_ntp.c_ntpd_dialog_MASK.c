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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ **,size_t*) ; 
 int FUNC2 (scalar_t__,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC4(u_int op, u_int associd, const char *vars, u_char **data,
    size_t *datalen)
{
	uint16_t rassocid;
	uint16_t rop;

	if (FUNC2(op, associd, vars) == -1)
		return (-1);
	if (FUNC1(&rop, &rassocid, data, datalen) == -1)
		return (-1);

	if (rop != op) {
		FUNC3(LOG_ERR, "bad response op 0x%x", rop);
		FUNC0(data);
		return (-1);
	}

	if (associd != rassocid) {
		FUNC3(LOG_ERR, "response for wrong associd");
		FUNC0(data);
		return (-1);
	}
	return (0);
}