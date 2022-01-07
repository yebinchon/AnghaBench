
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int flags; int index; TYPE_1__* mapping; } ;
struct afs_writeback {int dummy; } ;
struct TYPE_4__ {int vnode; int vid; } ;
struct afs_vnode {int cache; TYPE_2__ fid; } ;
typedef int gfp_t ;
struct TYPE_3__ {int host; } ;


 struct afs_vnode* AFS_FS_I (int ) ;
 int ClearPagePrivate (struct page*) ;
 scalar_t__ PagePrivate (struct page*) ;
 int _enter (char*,int ,int ,int ,int ,int ) ;
 int _leave (char*) ;
 int afs_put_writeback (struct afs_writeback*) ;
 int fscache_maybe_release_page (int ,struct page*,int ) ;
 scalar_t__ page_private (struct page*) ;
 int set_page_private (struct page*,int ) ;

__attribute__((used)) static int afs_releasepage(struct page *page, gfp_t gfp_flags)
{
 struct afs_writeback *wb = (struct afs_writeback *) page_private(page);
 struct afs_vnode *vnode = AFS_FS_I(page->mapping->host);

 _enter("{{%x:%u}[%lu],%lx},%x",
        vnode->fid.vid, vnode->fid.vnode, page->index, page->flags,
        gfp_flags);
 if (PagePrivate(page)) {
  if (wb) {
   set_page_private(page, 0);
   afs_put_writeback(wb);
  }
  ClearPagePrivate(page);
 }


 _leave(" = T");
 return 1;
}
