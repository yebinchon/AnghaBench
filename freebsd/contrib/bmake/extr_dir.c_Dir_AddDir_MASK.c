#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct dirent {scalar_t__ d_fileno; int /*<<< orphan*/  d_name; } ;
struct TYPE_9__ {int refCount; } ;
struct TYPE_8__ {int refCount; int /*<<< orphan*/  files; scalar_t__ hits; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Path ;
typedef  int /*<<< orphan*/ * LstNode ;
typedef  int /*<<< orphan*/ * Lst ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int DIR ; 
 int /*<<< orphan*/  DirFindName ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int d ; 
 int /*<<< orphan*/  debug_file ; 
 TYPE_2__* dotLast ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * openDirectories ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 struct dirent* FUNC13 (int) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 

Path *
FUNC15(Lst path, const char *name)
{
    LstNode       ln = NULL; /* node in case Path structure is found */
    Path	  *p = NULL;  /* pointer to new Path structure */
    DIR     	  *d;	      /* for reading directory */
    struct dirent *dp;	      /* entry in directory */

    if (FUNC14(name, ".DOTLAST") == 0) {
	ln = FUNC6(path, name, DirFindName);
	if (ln != NULL)
	    return (Path *)FUNC5(ln);
	else {
	    dotLast->refCount += 1;
	    (void)FUNC4(path, dotLast);
	}
    }

    if (path)
	ln = FUNC6(openDirectories, name, DirFindName);
    if (ln != NULL) {
	p = (Path *)FUNC5(ln);
	if (path && FUNC7(path, p) == NULL) {
	    p->refCount += 1;
	    (void)FUNC3(path, p);
	}
    } else {
	if (FUNC0(DIR)) {
	    FUNC11(debug_file, "Caching %s ...", name);
	}

	if ((d = FUNC12(name)) != NULL) {
	    p = FUNC8(sizeof(Path));
	    p->name = FUNC9(name);
	    p->hits = 0;
	    p->refCount = 1;
	    FUNC2(&p->files, -1);

	    while ((dp = FUNC13(d)) != NULL) {
#if defined(sun) && defined(d_ino) /* d_ino is a sunos4 #define for d_fileno */
		/*
		 * The sun directory library doesn't check for a 0 inode
		 * (0-inode slots just take up space), so we have to do
		 * it ourselves.
		 */
		if (dp->d_fileno == 0) {
		    continue;
		}
#endif /* sun && d_ino */
		(void)FUNC1(&p->files, dp->d_name, NULL);
	    }
	    (void)FUNC10(d);
	    (void)FUNC3(openDirectories, p);
	    if (path != NULL)
		(void)FUNC3(path, p);
	}
	if (FUNC0(DIR)) {
	    FUNC11(debug_file, "done\n");
	}
    }
    return p;
}