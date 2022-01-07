
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void page ;
struct nameidata {int dummy; } ;
struct dentry {int dummy; } ;


 int nd_set_link (struct nameidata*,int ) ;
 int page_getlink (struct dentry*,void**) ;

void *page_follow_link_light(struct dentry *dentry, struct nameidata *nd)
{
 struct page *page = ((void*)0);
 nd_set_link(nd, page_getlink(dentry, &page));
 return page;
}
