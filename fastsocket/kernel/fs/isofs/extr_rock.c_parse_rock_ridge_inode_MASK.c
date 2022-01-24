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
struct iso_directory_record {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int s_rock_offset; int s_rock; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iso_directory_record*,struct inode*,int) ; 

int FUNC2(struct iso_directory_record *de, struct inode *inode)
{
	int result = FUNC1(de, inode, 0);

	/*
	 * if rockridge flag was reset and we didn't look for attributes
	 * behind eventual XA attributes, have a look there
	 */
	if ((FUNC0(inode->i_sb)->s_rock_offset == -1)
	    && (FUNC0(inode->i_sb)->s_rock == 2)) {
		result = FUNC1(de, inode, 14);
	}
	return result;
}