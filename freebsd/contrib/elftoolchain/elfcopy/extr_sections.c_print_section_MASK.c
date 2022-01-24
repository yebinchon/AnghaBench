#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct section {scalar_t__ sz; int /*<<< orphan*/  is; int /*<<< orphan*/ * buf; } ;
struct TYPE_6__ {scalar_t__ d_size; int /*<<< orphan*/ * d_buf; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 

__attribute__((used)) static void
FUNC7(struct section *s)
{
	Elf_Data	*id;
	int		 elferr;

	if (s->buf != NULL && s->sz > 0) {
		FUNC5(s->buf, s->sz);
	} else {
		id = NULL;
		while ((id = FUNC2(s->is, id)) != NULL ||
		    (id = FUNC3(s->is, id)) != NULL) {
			(void) FUNC1();
			FUNC5(id->d_buf, id->d_size);
		}
		elferr = FUNC1();
		if (elferr != 0)
			FUNC4(EXIT_FAILURE, "elf_getdata() failed: %s",
			    FUNC0(elferr));
	}
	FUNC6('\n');
}