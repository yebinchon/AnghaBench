#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  fts_name; TYPE_2__* fts_statp; } ;
struct TYPE_6__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_7__ {TYPE_1__ st_birthtim; } ;
typedef  TYPE_3__ FTSENT ;

/* Variables and functions */
 scalar_t__ f_samesort ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(const FTSENT *a, const FTSENT *b)
{

	if (b->fts_statp->st_birthtim.tv_sec >
	    a->fts_statp->st_birthtim.tv_sec)
		return (1);
	if (b->fts_statp->st_birthtim.tv_sec <
	    a->fts_statp->st_birthtim.tv_sec)
		return (-1);
	if (b->fts_statp->st_birthtim.tv_nsec >
	    a->fts_statp->st_birthtim.tv_nsec)
		return (1);
	if (b->fts_statp->st_birthtim.tv_nsec <
	    a->fts_statp->st_birthtim.tv_nsec)
		return (-1);
	if (f_samesort)
		return (FUNC0(b->fts_name, a->fts_name));
	else
		return (FUNC0(a->fts_name, b->fts_name));
}