
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int dummy; } ;
struct list_head {int next; } ;


 int list_empty (struct list_head*) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int nfs_release_request (struct nfs_page*) ;

__attribute__((used)) static void nfs_read_sync_pgio_error(struct list_head *head)
{
 struct nfs_page *req;

 while (!list_empty(head)) {
  req = nfs_list_entry(head->next);
  nfs_list_remove_request(req);
  nfs_release_request(req);
 }
}
