#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int args; scalar_t__* argtags; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ bucket ;
struct TYPE_9__ {int args; scalar_t__* argtags; } ;

/* Variables and functions */
 int L_PAREN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char**,scalar_t__) ; 
 char* FUNC3 (int*) ; 
 int* cptr ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_1__* FUNC7 () ; 
 TYPE_1__* FUNC8 () ; 
 char* FUNC9 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ last_was_action ; 
 void* lineno ; 
 int maxitems ; 
 int FUNC11 () ; 
 int nitems ; 
 size_t nrules ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,int) ; 
 TYPE_1__** pitem ; 
 TYPE_3__** plhs ; 
 void* rescan_lineno ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(void)
{
    int c;
    bucket *bp;
    int s_lineno = lineno;
#if defined(YYBTYACC)
    char *args = NULL;
    int argslen = 0;
#endif

    c = *cptr;
    if (c == '\'' || c == '"')
	bp = FUNC7();
    else
	bp = FUNC8();

    c = FUNC11();
    rescan_lineno = lineno;	/* line# for possible inherited args rescan */
#if defined(YYBTYACC)
    if (c == L_PAREN)
    {
	++cptr;
	args = copy_args(&argslen);
	NO_SPACE(args);
	c = nextc();
    }
#endif
    if (c == ':')
    {
	FUNC4();
	FUNC13(bp, s_lineno);
#if defined(YYBTYACC)
	parse_arginfo(bp, args, argslen);
#endif
	++cptr;
	return;
    }

    if (last_was_action)
	FUNC10();
    last_was_action = 0;

#if defined(YYBTYACC)
    if (bp->args < 0)
	bp->args = argslen;
    if (argslen == 0 && bp->args > 0 && pitem[nitems - 1] == NULL)
    {
	int i;
	if (plhs[nrules]->args != bp->args)
	    wrong_number_args_warning("default ", bp->name);
	for (i = bp->args - 1; i >= 0; i--)
	    if (plhs[nrules]->argtags[i] != bp->argtags[i])
		wrong_type_for_arg_warning(i + 1, bp->name);
    }
    else if (bp->args != argslen)
	wrong_number_args_warning("", bp->name);
    if (args != 0)
    {
	char *ap = args;
	int i = 0;
	int elide_cnt = can_elide_arg(&ap, bp->argtags[0]);

	if (elide_cnt > argslen)
	    elide_cnt = 0;
	if (elide_cnt)
	{
	    for (i = 1; i < elide_cnt; i++)
		if (can_elide_arg(&ap, bp->argtags[i]) != elide_cnt - i)
		{
		    elide_cnt = 0;
		    break;
		}
	}
	if (elide_cnt)
	{
	    assert(i == elide_cnt);
	}
	else
	{
	    ap = args;
	    i = 0;
	}
	for (; i < argslen; i++)
	    ap = insert_arg_rule(ap, bp->argtags[i]);
	free(args);
    }
#endif /* defined(YYBTYACC) */

    if (++nitems > maxitems)
	FUNC5();
    pitem[nitems - 1] = bp;
}