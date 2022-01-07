
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct cg_cgroup_link {int cgrp_link_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int free_cg_links (struct list_head*) ;
 struct cg_cgroup_link* kmalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static int allocate_cg_links(int count, struct list_head *tmp)
{
 struct cg_cgroup_link *link;
 int i;
 INIT_LIST_HEAD(tmp);
 for (i = 0; i < count; i++) {
  link = kmalloc(sizeof(*link), GFP_KERNEL);
  if (!link) {
   free_cg_links(tmp);
   return -ENOMEM;
  }
  list_add(&link->cgrp_link_list, tmp);
 }
 return 0;
}
