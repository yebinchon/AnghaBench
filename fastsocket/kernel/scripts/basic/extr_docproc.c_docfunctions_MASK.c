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
struct symfile {int symbolcnt; TYPE_1__* symbollist; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 char* DOCBOOK ; 
 char* KERNELDOC ; 
 char* NODOCSECTIONS ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 char** FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int symfilecnt ; 
 struct symfile* symfilelist ; 

__attribute__((used)) static void FUNC7(char * filename, char * type)
{
	int i,j;
	int symcnt = 0;
	int idx = 0;
	char **vec;

	for (i=0; i <= symfilecnt; i++)
		symcnt += symfilelist[i].symbolcnt;
	vec = FUNC4((2 + 2 * symcnt + 3) * sizeof(char *));
	if (vec == NULL) {
		FUNC5("docproc: ");
		FUNC1(1);
	}
	vec[idx++] = KERNELDOC;
	vec[idx++] = DOCBOOK;
	vec[idx++] = NODOCSECTIONS;
	for (i=0; i < symfilecnt; i++) {
		struct symfile * sym = &symfilelist[i];
		for (j=0; j < sym->symbolcnt; j++) {
			vec[idx++]     = type;
			vec[idx++] = sym->symbollist[j].name;
		}
	}
	vec[idx++]     = filename;
	vec[idx] = NULL;
	FUNC6("<!-- %s -->\n", filename);
	FUNC0(vec);
	FUNC2(stdout);
	FUNC3(vec);
}