#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  name; scalar_t__ flags; int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ Var ;
struct TYPE_11__ {int flags; char* name; int /*<<< orphan*/  context; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ Hash_Entry ;
typedef  TYPE_3__ GNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int INTERNAL ; 
 int /*<<< orphan*/  VAR ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,char const*,char const*) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static void
FUNC8(const char *name, const char *val, GNode *ctxt)
{
    Var   	  *v;
    int		  len;
    Hash_Entry    *h;

    v = FUNC5(sizeof(Var));

    len = val ? FUNC7(val) : 0;
    FUNC1(&v->val, len+1);
    FUNC0(&v->val, len, val);

    v->flags = 0;

    h = FUNC3(&ctxt->context, name, NULL);
    FUNC4(h, v);
    v->name = h->name;
    if (FUNC2(VAR) && (ctxt->flags & INTERNAL) == 0) {
	FUNC6(debug_file, "%s:%s = %s\n", ctxt->name, name, val);
    }
}