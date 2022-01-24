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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct hpfs_inode_info {scalar_t__ i_conv; } ;

/* Variables and functions */
 scalar_t__ CONV_AUTO ; 
 scalar_t__ CONV_BINARY ; 
 scalar_t__ CONV_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int,unsigned char*,int,int /*<<< orphan*/ ) ; 
 struct hpfs_inode_info* FUNC1 (struct inode*) ; 
 int FUNC2 (scalar_t__*) ; 
 scalar_t__** text_postfix ; 
 scalar_t__** text_prefix ; 

void FUNC3(struct inode *inode, unsigned char *name, unsigned len)
{
	struct hpfs_inode_info *hpfs_inode = FUNC1(inode);
	int i;
	if (hpfs_inode->i_conv != CONV_AUTO) return;
	for (i = 0; *text_postfix[i]; i++) {
		int l = FUNC2(text_postfix[i]);
		if (l <= len)
			if (!FUNC0(inode->i_sb, text_postfix[i], l, name + len - l, l, 0))
				goto text;
	}
	for (i = 0; *text_prefix[i]; i++) {
		int l = FUNC2(text_prefix[i]);
		if (l <= len)
			if (!FUNC0(inode->i_sb, text_prefix[i], l, name, l, 0))
				goto text;
	}
	hpfs_inode->i_conv = CONV_BINARY;
	return;
	text:
	hpfs_inode->i_conv = CONV_TEXT;
	return;
}