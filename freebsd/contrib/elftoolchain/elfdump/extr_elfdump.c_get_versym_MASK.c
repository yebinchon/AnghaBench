#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct section {scalar_t__ type; scalar_t__ link; scalar_t__ sz; int /*<<< orphan*/  scn; } ;
struct elfdump {size_t shnum; struct section* sl; } ;
struct TYPE_3__ {scalar_t__ d_size; int /*<<< orphan*/ * d_buf; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 scalar_t__ SHT_SUNW_versym ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct section*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct elfdump *ed, int i, uint16_t **vs, int *nvs)
{
	struct section	*s;
	Elf_Data	*data;
	size_t		 j;
	int		 elferr;

	s = NULL;
	for (j = 0; j < ed->shnum; j++) {
		s = &ed->sl[j];
		if (s->type == SHT_SUNW_versym && s->link == (uint32_t)i)
			break;
	}
	if (j >= ed->shnum) {
		*vs = NULL;
		return;
	}
	(void) FUNC2();
	if ((data = FUNC3(s->scn, NULL)) == NULL) {
		elferr = FUNC2();
		if (elferr != 0)
			FUNC5("elf_getdata failed: %s", FUNC1(elferr));
		*vs = NULL;
		return;
	}

	*vs = data->d_buf;
	FUNC0(data->d_size == s->sz);
	if (!FUNC4(s, nvs))
		*nvs = 0;
}