
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_completion_ops {int dummy; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct nfs_page {int dummy; } ;
struct list_head {int next; } ;
struct inode {int dummy; } ;


 int EIO ;
 int FLUSH_STABLE ;
 int LIST_HEAD (struct list_head) ;
 struct list_head failed ;
 int list_empty (struct list_head*) ;
 int list_move (struct list_head*,struct list_head*) ;
 int nfs_list_add_request (struct nfs_page*,struct list_head*) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int nfs_pageio_add_request (struct nfs_pageio_descriptor*,struct nfs_page*) ;
 int nfs_pageio_complete (struct nfs_pageio_descriptor*) ;
 int nfs_pageio_init_write (struct nfs_pageio_descriptor*,struct inode*,int ,struct nfs_pgio_completion_ops const*) ;

__attribute__((used)) static int pnfs_write_done_resend_to_mds(struct inode *inode,
    struct list_head *head,
    const struct nfs_pgio_completion_ops *compl_ops)
{
 struct nfs_pageio_descriptor pgio;
 LIST_HEAD(failed);


 nfs_pageio_init_write(&pgio, inode, FLUSH_STABLE, compl_ops);
 while (!list_empty(head)) {
  struct nfs_page *req = nfs_list_entry(head->next);

  nfs_list_remove_request(req);
  if (!nfs_pageio_add_request(&pgio, req))
   nfs_list_add_request(req, &failed);
 }
 nfs_pageio_complete(&pgio);

 if (!list_empty(&failed)) {




  list_move(&failed, head);
  return -EIO;
 }
 return 0;
}
