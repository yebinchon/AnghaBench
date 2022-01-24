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
struct field {scalar_t__ type; void* decl; void* name; } ;
struct TYPE_2__ {size_t nfields; struct field* field; scalar_t__ done; } ;

/* Variables and functions */
 int BUFLEN ; 
 scalar_t__ T_INT ; 
 scalar_t__ T_NODE ; 
 scalar_t__ T_NODELIST ; 
 scalar_t__ T_OTHER ; 
 scalar_t__ T_STRING ; 
 scalar_t__ T_TEMP ; 
 TYPE_1__* curstr ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* linep ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	char name[BUFLEN];
	char type[BUFLEN];
	char decl[2 * BUFLEN];
	struct field *fp;

	if (curstr == NULL || curstr->done)
		FUNC0("No current structure to add field to");
	if (! FUNC1(name))
		FUNC0("No field name");
	if (! FUNC1(type))
		FUNC0("No field type");
	fp = &curstr->field[curstr->nfields];
	fp->name = FUNC2(name);
	if (FUNC5(type, "nodeptr") == 0) {
		fp->type = T_NODE;
		FUNC4(decl, "union node *%s", name);
	} else if (FUNC5(type, "nodelist") == 0) {
		fp->type = T_NODELIST;
		FUNC4(decl, "struct nodelist *%s", name);
	} else if (FUNC5(type, "string") == 0) {
		fp->type = T_STRING;
		FUNC4(decl, "char *%s", name);
	} else if (FUNC5(type, "int") == 0) {
		fp->type = T_INT;
		FUNC4(decl, "int %s", name);
	} else if (FUNC5(type, "other") == 0) {
		fp->type = T_OTHER;
	} else if (FUNC5(type, "temp") == 0) {
		fp->type = T_TEMP;
	} else {
		FUNC0("Unknown type %s", type);
	}
	if (fp->type == T_OTHER || fp->type == T_TEMP) {
		FUNC3();
		fp->decl = FUNC2(linep);
	} else {
		if (*linep)
			FUNC0("Garbage at end of line");
		fp->decl = FUNC2(decl);
	}
	curstr->nfields++;
}