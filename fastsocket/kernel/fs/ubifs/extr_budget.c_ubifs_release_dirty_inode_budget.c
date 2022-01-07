
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {int data_len; } ;
struct ubifs_info {scalar_t__ inode_budget; } ;
struct ubifs_budget_req {scalar_t__ dd_growth; } ;


 scalar_t__ ALIGN (int ,int) ;
 int memset (struct ubifs_budget_req*,int ,int) ;
 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;

void ubifs_release_dirty_inode_budget(struct ubifs_info *c,
          struct ubifs_inode *ui)
{
 struct ubifs_budget_req req;

 memset(&req, 0, sizeof(struct ubifs_budget_req));

 req.dd_growth = c->inode_budget + ALIGN(ui->data_len, 8);
 ubifs_release_budget(c, &req);
}
