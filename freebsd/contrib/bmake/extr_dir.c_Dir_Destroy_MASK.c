#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ refCount; struct TYPE_4__* name; int /*<<< orphan*/  files; } ;
typedef  TYPE_1__ Path ;
typedef  int /*<<< orphan*/  LstNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  openDirectories ; 

void
FUNC4(void *pp)
{
    Path    	  *p = (Path *)pp;
    p->refCount -= 1;

    if (p->refCount == 0) {
	LstNode	ln;

	ln = FUNC1(openDirectories, p);
	(void)FUNC2(openDirectories, ln);

	FUNC0(&p->files);
	FUNC3(p->name);
	FUNC3(p);
    }
}