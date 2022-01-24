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
struct TYPE_9__ {int entries; int maxlen; int /*<<< orphan*/  s_block; int /*<<< orphan*/  s_inode; int /*<<< orphan*/  btotal; TYPE_1__* list; } ;
struct TYPE_8__ {scalar_t__ fts_number; scalar_t__ fts_level; struct TYPE_8__* fts_link; } ;
typedef  TYPE_1__ FTSENT ;
typedef  TYPE_2__ DISPLAY ;

/* Variables and functions */
 scalar_t__ FTS_ROOTLEVEL ; 
 scalar_t__ NO_PRINT ; 
 int /*<<< orphan*/  blocksize ; 
 scalar_t__ f_inode ; 
 scalar_t__ f_longform ; 
 scalar_t__ f_notabs ; 
 scalar_t__ f_size ; 
 scalar_t__ f_sortacross ; 
 scalar_t__ f_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 TYPE_1__** FUNC5 (TYPE_1__**,int) ; 
 int termwidth ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(const DISPLAY *dp)
{
	static FTSENT **array;
	static int lastentries = -1;
	FTSENT *p;
	FTSENT **narray;
	int base;
	int chcnt;
	int cnt;
	int col;
	int colwidth;
	int endcol;
	int num;
	int numcols;
	int numrows;
	int row;
	int tabwidth;

	if (f_notabs)
		tabwidth = 1;
	else
		tabwidth = 8;

	/*
	 * Have to do random access in the linked list -- build a table
	 * of pointers.
	 */
	if (dp->entries > lastentries) {
		if ((narray =
		    FUNC5(array, dp->entries * sizeof(FTSENT *))) == NULL) {
			FUNC6(NULL);
			FUNC3(dp);
			return;
		}
		lastentries = dp->entries;
		array = narray;
	}
	for (p = dp->list, num = 0; p; p = p->fts_link)
		if (p->fts_number != NO_PRINT)
			array[num++] = p;

	colwidth = dp->maxlen;
	if (f_inode)
		colwidth += dp->s_inode + 1;
	if (f_size)
		colwidth += dp->s_block + 1;
	if (f_type)
		colwidth += 1;

	colwidth = (colwidth + tabwidth) & ~(tabwidth - 1);
	if (termwidth < 2 * colwidth) {
		FUNC3(dp);
		return;
	}
	numcols = termwidth / colwidth;
	numrows = num / numcols;
	if (num % numcols)
		++numrows;

	if ((dp->list == NULL || dp->list->fts_level != FTS_ROOTLEVEL) &&
	    (f_longform || f_size)) {
		(void)FUNC2("total %lu\n", FUNC0(dp->btotal, blocksize));
	}

	base = 0;
	for (row = 0; row < numrows; ++row) {
		endcol = colwidth;
		if (!f_sortacross)
			base = row;
		for (col = 0, chcnt = 0; col < numcols; ++col) {
			chcnt += FUNC1(array[base], dp->s_inode,
			    dp->s_block);
			if (f_sortacross)
				base++;
			else
				base += numrows;
			if (base >= num)
				break;
			while ((cnt = ((chcnt + tabwidth) & ~(tabwidth - 1)))
			    <= endcol) {
				if (f_sortacross && col + 1 >= numcols)
					break;
				(void)FUNC4(f_notabs ? ' ' : '\t');
				chcnt = cnt;
			}
			endcol += colwidth;
		}
		(void)FUNC4('\n');
	}
}