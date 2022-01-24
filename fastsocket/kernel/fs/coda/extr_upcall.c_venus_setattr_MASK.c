#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union outputArgs {int dummy; } outputArgs ;
struct coda_vattr {int dummy; } ;
struct CodaFid {int dummy; } ;
struct TYPE_2__ {struct coda_vattr attr; struct CodaFid VFid; } ;
union inputArgs {TYPE_1__ coda_setattr; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union inputArgs*,int) ; 
 int /*<<< orphan*/  CODA_SETATTR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int*,union inputArgs*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  setattr ; 

int FUNC5(struct super_block *sb, struct CodaFid *fid, 
		  struct coda_vattr *vattr)
{
        union inputArgs *inp;
        union outputArgs *outp;
        int insize, outsize, error;
	
	insize = FUNC1(setattr);
	FUNC2(CODA_SETATTR);

        inp->coda_setattr.VFid = *fid;
	inp->coda_setattr.attr = *vattr;

	error = FUNC3(FUNC4(sb), insize, &outsize, inp);

        FUNC0(inp, insize);
        return error;
}