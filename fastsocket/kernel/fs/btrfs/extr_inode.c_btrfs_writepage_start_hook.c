
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct page {TYPE_2__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_7__ {int func; } ;
struct btrfs_writepage_fixup {TYPE_3__ work; struct page* page; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_8__ {struct btrfs_root* root; } ;
struct TYPE_6__ {struct inode* host; } ;
struct TYPE_5__ {int fixup_workers; } ;


 TYPE_4__* BTRFS_I (struct inode*) ;
 int EAGAIN ;
 int EBUSY ;
 int GFP_NOFS ;
 scalar_t__ PageChecked (struct page*) ;
 int SetPageChecked (struct page*) ;
 scalar_t__ TestClearPagePrivate2 (struct page*) ;
 int btrfs_queue_worker (int *,TYPE_3__*) ;
 int btrfs_writepage_fixup_worker ;
 struct btrfs_writepage_fixup* kzalloc (int,int ) ;
 int page_cache_get (struct page*) ;

__attribute__((used)) static int btrfs_writepage_start_hook(struct page *page, u64 start, u64 end)
{
 struct inode *inode = page->mapping->host;
 struct btrfs_writepage_fixup *fixup;
 struct btrfs_root *root = BTRFS_I(inode)->root;


 if (TestClearPagePrivate2(page))
  return 0;

 if (PageChecked(page))
  return -EAGAIN;

 fixup = kzalloc(sizeof(*fixup), GFP_NOFS);
 if (!fixup)
  return -EAGAIN;

 SetPageChecked(page);
 page_cache_get(page);
 fixup->work.func = btrfs_writepage_fixup_worker;
 fixup->page = page;
 btrfs_queue_worker(&root->fs_info->fixup_workers, &fixup->work);
 return -EBUSY;
}
