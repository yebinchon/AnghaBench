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
typedef  int /*<<< orphan*/  tdesc_t ;
typedef  int /*<<< orphan*/  alist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,void**) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static int
FUNC3(tdesc_t *fwd, tdesc_t **fwdp, void *private)
{
	alist_t *map = private;
	void *defn;

	if (!FUNC0(map, (void *)fwd, (void **)&defn))
		return (0);

	FUNC1(3, "Redirecting an edge to %s\n", FUNC2(defn));

	*fwdp = defn;

	return (1);
}