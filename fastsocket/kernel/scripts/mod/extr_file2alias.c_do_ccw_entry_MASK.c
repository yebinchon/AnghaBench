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
struct ccw_device_id {int match_flags; int cu_type; int cu_model; int dev_type; int dev_model; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 
 int CCW_DEVICE_ID_MATCH_CU_MODEL ; 
 int CCW_DEVICE_ID_MATCH_CU_TYPE ; 
 int CCW_DEVICE_ID_MATCH_DEVICE_MODEL ; 
 int CCW_DEVICE_ID_MATCH_DEVICE_TYPE ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *filename,
			struct ccw_device_id *id, char *alias)
{
	id->match_flags = FUNC1(id->match_flags);
	id->cu_type = FUNC1(id->cu_type);
	id->cu_model = FUNC1(id->cu_model);
	id->dev_type = FUNC1(id->dev_type);
	id->dev_model = FUNC1(id->dev_model);

	FUNC3(alias, "ccw:");
	FUNC0(alias, "t", id->match_flags&CCW_DEVICE_ID_MATCH_CU_TYPE,
	    id->cu_type);
	FUNC0(alias, "m", id->match_flags&CCW_DEVICE_ID_MATCH_CU_MODEL,
	    id->cu_model);
	FUNC0(alias, "dt", id->match_flags&CCW_DEVICE_ID_MATCH_DEVICE_TYPE,
	    id->dev_type);
	FUNC0(alias, "dm", id->match_flags&CCW_DEVICE_ID_MATCH_DEVICE_MODEL,
	    id->dev_model);
	FUNC2(alias);
	return 1;
}