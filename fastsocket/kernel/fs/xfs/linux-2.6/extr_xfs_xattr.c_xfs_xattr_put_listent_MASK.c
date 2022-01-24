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
struct xfs_attr_list_context {unsigned int count; int firstu; scalar_t__ alist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int XFS_ATTR_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (int) ; 
 unsigned int FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(
	struct xfs_attr_list_context *context,
	int		flags,
	unsigned char	*name,
	int		namelen,
	int		valuelen,
	unsigned char	*value)
{
	unsigned int prefix_len = FUNC4(flags);
	char *offset;
	int arraytop;

	FUNC0(context->count >= 0);

	/*
	 * Only show root namespace entries if we are actually allowed to
	 * see them.
	 */
	if ((flags & XFS_ATTR_ROOT) && !FUNC1(CAP_SYS_ADMIN))
		return 0;

	arraytop = context->count + prefix_len + namelen + 1;
	if (arraytop > context->firstu) {
		context->count = -1;	/* insufficient space */
		return 1;
	}
	offset = (char *)context->alist + context->count;
	FUNC2(offset, FUNC3(flags), prefix_len);
	offset += prefix_len;
	FUNC2(offset, (char *)name, namelen);			/* real name */
	offset += namelen;
	*offset = '\0';
	context->count += prefix_len + namelen + 1;
	return 0;
}