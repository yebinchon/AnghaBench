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
struct TYPE_2__ {scalar_t__ time; } ;
union smb_dir_cache {TYPE_1__ head; } ;
struct smb_sb_info {int dummy; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 union smb_dir_cache* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 struct smb_sb_info* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

void
FUNC9(struct inode * dir)
{
	struct smb_sb_info *server = FUNC7(dir);
	union  smb_dir_cache *cache = NULL;
	struct page *page = NULL;

	page = FUNC3(&dir->i_data, 0);
	if (!page)
		goto out;

	if (!FUNC0(page))
		goto out_unlock;

	cache = FUNC4(page);
	cache->head.time = jiffies - FUNC1(server);

	FUNC5(page);
	FUNC2(page);
out_unlock:
	FUNC8(page);
	FUNC6(page);
out:
	return;
}