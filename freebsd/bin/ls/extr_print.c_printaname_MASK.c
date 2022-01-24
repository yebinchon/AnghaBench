#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ u_long ;
struct stat {int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_blocks; scalar_t__ st_ino; } ;
struct TYPE_3__ {int /*<<< orphan*/  fts_name; struct stat* fts_statp; } ;
typedef  TYPE_1__ FTSENT ;

/* Variables and functions */
 int /*<<< orphan*/  blocksize ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ f_color ; 
 scalar_t__ f_inode ; 
 scalar_t__ f_size ; 
 scalar_t__ f_type ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(const FTSENT *p, u_long inodefield, u_long sizefield)
{
	struct stat *sp;
	int chcnt;
#ifdef COLORLS
	int color_printed = 0;
#endif

	sp = p->fts_statp;
	chcnt = 0;
	if (f_inode)
		chcnt += FUNC3("%*ju ",
		    (int)inodefield, (uintmax_t)sp->st_ino);
	if (f_size)
		chcnt += FUNC3("%*jd ",
		    (int)sizefield, FUNC2(sp->st_blocks, blocksize));
#ifdef COLORLS
	if (f_color)
		color_printed = colortype(sp->st_mode);
#endif
	chcnt += FUNC4(p->fts_name);
#ifdef COLORLS
	if (f_color && color_printed)
		endcolor(0);
#endif
	if (f_type)
		chcnt += FUNC5(sp->st_mode);
	return (chcnt);
}