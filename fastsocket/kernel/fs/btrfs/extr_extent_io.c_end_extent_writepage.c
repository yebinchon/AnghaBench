
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct page {TYPE_1__* mapping; } ;
struct extent_io_tree {TYPE_2__* ops; } ;
struct TYPE_6__ {struct extent_io_tree io_tree; } ;
struct TYPE_5__ {int (* writepage_end_io_hook ) (struct page*,int ,int ,int *,int) ;} ;
struct TYPE_4__ {int host; } ;


 TYPE_3__* BTRFS_I (int ) ;
 int ClearPageUptodate (struct page*) ;
 int SetPageError (struct page*) ;
 int stub1 (struct page*,int ,int ,int *,int) ;

int end_extent_writepage(struct page *page, int err, u64 start, u64 end)
{
 int uptodate = (err == 0);
 struct extent_io_tree *tree;
 int ret;

 tree = &BTRFS_I(page->mapping->host)->io_tree;

 if (tree->ops && tree->ops->writepage_end_io_hook) {
  ret = tree->ops->writepage_end_io_hook(page, start,
            end, ((void*)0), uptodate);
  if (ret)
   uptodate = 0;
 }

 if (!uptodate) {
  ClearPageUptodate(page);
  SetPageError(page);
 }
 return 0;
}
