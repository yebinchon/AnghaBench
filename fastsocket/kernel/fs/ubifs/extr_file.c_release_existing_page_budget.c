
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int page_budget; } ;
struct ubifs_budget_req {int dd_growth; } ;


 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;

__attribute__((used)) static void release_existing_page_budget(struct ubifs_info *c)
{
 struct ubifs_budget_req req = { .dd_growth = c->page_budget};

 ubifs_release_budget(c, &req);
}
