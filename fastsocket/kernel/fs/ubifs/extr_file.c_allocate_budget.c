
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {scalar_t__ dirty; int ui_mutex; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int fast; int dirtied_ino; int new_page; int dirtied_page; } ;
struct page {int dummy; } ;


 scalar_t__ PageChecked (struct page*) ;
 scalar_t__ PagePrivate (struct page*) ;
 int mutex_lock (int *) ;
 int ubifs_budget_space (struct ubifs_info*,struct ubifs_budget_req*) ;

__attribute__((used)) static int allocate_budget(struct ubifs_info *c, struct page *page,
      struct ubifs_inode *ui, int appending)
{
 struct ubifs_budget_req req = { .fast = 1 };

 if (PagePrivate(page)) {
  if (!appending)




   return 0;

  mutex_lock(&ui->ui_mutex);
  if (ui->dirty)
   return 0;





  req.dirtied_ino = 1;
 } else {
  if (PageChecked(page))







   req.new_page = 1;
  else





   req.dirtied_page = 1;

  if (appending) {
   mutex_lock(&ui->ui_mutex);
   if (!ui->dirty)





    req.dirtied_ino = 1;
  }
 }

 return ubifs_budget_space(c, &req);
}
