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
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* name; } ;
struct TYPE_8__ {char* name; int /*<<< orphan*/  parents; int /*<<< orphan*/  children; } ;
struct TYPE_7__ {int len; char* ename; } ;
typedef  TYPE_1__ SuffixCmpData ;
typedef  TYPE_2__ Suff ;
typedef  int /*<<< orphan*/ * LstNode ;
typedef  TYPE_3__ GNode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  SuffSuffHasNameP ; 
 char* FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  sufflist ; 

__attribute__((used)) static int
FUNC7(void *transformp, void *sp)
{
    GNode   	*transform = (GNode *)transformp;
    Suff    	*s = (Suff *)sp;
    char 	*cp;
    LstNode	ln;
    Suff  	*s2;
    SuffixCmpData sd;

    /*
     * First see if it is a transformation from this suffix.
     */
    cp = FUNC5(FUNC3(s->name, transform->name));
    if (cp != NULL) {
	ln = FUNC1(sufflist, cp, SuffSuffHasNameP);
	if (ln != NULL) {
	    /*
	     * Found target. Link in and return, since it can't be anything
	     * else.
	     */
	    s2 = (Suff *)FUNC0(ln);
	    FUNC2(s2->children, s);
	    FUNC2(s->parents, s2);
	    return(0);
	}
    }

    /*
     * Not from, maybe to?
     */
    sd.len = FUNC6(transform->name);
    sd.ename = transform->name + sd.len;
    cp = FUNC4(s, &sd);
    if (cp != NULL) {
	/*
	 * Null-terminate the source suffix in order to find it.
	 */
	cp[1] = '\0';
	ln = FUNC1(sufflist, transform->name, SuffSuffHasNameP);
	/*
	 * Replace the start of the target suffix
	 */
	cp[1] = s->name[0];
	if (ln != NULL) {
	    /*
	     * Found it -- establish the proper relationship
	     */
	    s2 = (Suff *)FUNC0(ln);
	    FUNC2(s->children, s2);
	    FUNC2(s2->parents, s);
	}
    }
    return(0);
}