
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct css_set {int dummy; } ;
struct cgroup {int dummy; } ;
struct cg_list_entry {int links; struct css_set* cg; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct css_set* find_css_set (struct css_set*,struct cgroup*) ;
 struct cg_list_entry* kmalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;
 int put_css_set (struct css_set*) ;

__attribute__((used)) static int css_set_prefetch(struct cgroup *cgrp, struct css_set *cg,
       struct list_head *newcg_list)
{
 struct css_set *newcg;
 struct cg_list_entry *cg_entry;


 newcg = find_css_set(cg, cgrp);
 if (!newcg)
  return -ENOMEM;

 cg_entry = kmalloc(sizeof(struct cg_list_entry), GFP_KERNEL);
 if (!cg_entry) {
  put_css_set(newcg);
  return -ENOMEM;
 }
 cg_entry->cg = newcg;
 list_add(&cg_entry->links, newcg_list);
 return 0;
}
