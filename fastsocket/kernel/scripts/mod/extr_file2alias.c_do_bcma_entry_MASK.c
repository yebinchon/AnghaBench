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
struct bcma_device_id {scalar_t__ manuf; scalar_t__ id; scalar_t__ rev; scalar_t__ class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,scalar_t__) ; 
 scalar_t__ BCMA_ANY_CLASS ; 
 scalar_t__ BCMA_ANY_ID ; 
 scalar_t__ BCMA_ANY_MANUF ; 
 scalar_t__ BCMA_ANY_REV ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *filename,
			 struct bcma_device_id *id, char *alias)
{
	id->manuf = FUNC1(id->manuf);
	id->id = FUNC1(id->id);
	id->rev = FUNC1(id->rev);
	id->class = FUNC1(id->class);

	FUNC3(alias, "bcma:");
	FUNC0(alias, "m", id->manuf != BCMA_ANY_MANUF, id->manuf);
	FUNC0(alias, "id", id->id != BCMA_ANY_ID, id->id);
	FUNC0(alias, "rev", id->rev != BCMA_ANY_REV, id->rev);
	FUNC0(alias, "cl", id->class != BCMA_ANY_CLASS, id->class);
	FUNC2(alias);
	return 1;
}