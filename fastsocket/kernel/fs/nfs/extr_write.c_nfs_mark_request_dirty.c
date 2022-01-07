
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_page {TYPE_2__* wb_page; } ;
struct TYPE_4__ {TYPE_1__* mapping; } ;
struct TYPE_3__ {int host; } ;


 int I_DIRTY_DATASYNC ;
 int __mark_inode_dirty (int ,int ) ;
 int __set_page_dirty_nobuffers (TYPE_2__*) ;

__attribute__((used)) static void
nfs_mark_request_dirty(struct nfs_page *req)
{
 __set_page_dirty_nobuffers(req->wb_page);
 __mark_inode_dirty(req->wb_page->mapping->host, I_DIRTY_DATASYNC);
}
