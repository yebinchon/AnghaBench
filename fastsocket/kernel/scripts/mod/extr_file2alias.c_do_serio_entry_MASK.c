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
struct serio_device_id {scalar_t__ type; scalar_t__ proto; scalar_t__ id; scalar_t__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,scalar_t__) ; 
 scalar_t__ SERIO_ANY ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *filename,
			  struct serio_device_id *id, char *alias)
{
	id->type = FUNC1(id->type);
	id->proto = FUNC1(id->proto);
	id->id = FUNC1(id->id);
	id->extra = FUNC1(id->extra);

	FUNC3(alias, "serio:");
	FUNC0(alias, "ty", id->type != SERIO_ANY, id->type);
	FUNC0(alias, "pr", id->proto != SERIO_ANY, id->proto);
	FUNC0(alias, "id", id->id != SERIO_ANY, id->id);
	FUNC0(alias, "ex", id->extra != SERIO_ANY, id->extra);

	FUNC2(alias);
	return 1;
}