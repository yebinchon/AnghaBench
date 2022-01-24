#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int t_id; } ;
typedef  TYPE_2__ tdesc_t ;
struct TYPE_7__ {int /*<<< orphan*/  rmd_map; TYPE_1__* rmd_tgt; } ;
typedef  TYPE_3__ redir_mstr_data_t ;
struct TYPE_5__ {int /*<<< orphan*/  td_idhash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC5(void *name, void *value, void *arg)
{
	tdesc_t *fwd = name;
	int defnid = (uintptr_t)value;
	redir_mstr_data_t *rmd = arg;
	tdesc_t template;
	tdesc_t *defn;

	template.t_id = defnid;

	if (!FUNC3(rmd->rmd_tgt->td_idhash, (void *)&template,
	    (void *)&defn)) {
		FUNC0("Couldn't unforward %d (%s)\n", defnid,
		    FUNC4(defn));
	}

	FUNC2(3, "Forward map: resolved %d to %s\n", defnid, FUNC4(defn));

	FUNC1(rmd->rmd_map, (void *)fwd, (void *)defn);

	return (1);
}