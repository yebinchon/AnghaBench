
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int recalculate; int new_page; } ;


 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;

__attribute__((used)) static void release_new_page_budget(struct ubifs_info *c)
{
 struct ubifs_budget_req req = { .recalculate = 1, .new_page = 1 };

 ubifs_release_budget(c, &req);
}
