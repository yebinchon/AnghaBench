#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct coda_vattr {int dummy; } ;
struct CodaFid {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct super_block*,struct CodaFid*,struct coda_vattr*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct super_block*,struct CodaFid*,struct coda_vattr*) ; 

int FUNC5(struct inode **inode, struct CodaFid *fid, struct super_block *sb)
{
        struct coda_vattr attr;
        int error;
        
	/* We get inode numbers from Venus -- see venus source */
	error = FUNC4(sb, fid, &attr);
	if ( error ) {
	    *inode = NULL;
	    return error;
	} 

	*inode = FUNC2(sb, fid, &attr);
	if ( FUNC0(*inode) ) {
		FUNC3("coda_cnode_make: coda_iget failed\n");
                return FUNC1(*inode);
        }
	return 0;
}