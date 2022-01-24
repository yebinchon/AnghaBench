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
struct TYPE_4__ {char* name; char* path; } ;
typedef  int /*<<< orphan*/  Lst ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char*) ; 
 int FUNC5 (char*) ; 

void
FUNC6(GNode *gn, Lst path)
{
    char	    *libName;   /* file name for archive */
    size_t	     sz = FUNC5(gn->name) + 6 - 2;

    libName = FUNC2(sz);
    FUNC4(libName, sz, "lib%s.a", &gn->name[2]);

    gn->path = FUNC0(libName, path);

    FUNC3(libName);

#ifdef LIBRARIES
    Var_Set(TARGET, gn->name, gn, 0);
#else
    FUNC1(TARGET, gn->path == NULL ? gn->name : gn->path, gn, 0);
#endif /* LIBRARIES */
}