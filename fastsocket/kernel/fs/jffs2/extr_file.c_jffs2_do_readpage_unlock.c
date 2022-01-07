
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;


 int jffs2_do_readpage_nolock (struct inode*,struct page*) ;
 int unlock_page (struct page*) ;

int jffs2_do_readpage_unlock(struct inode *inode, struct page *pg)
{
 int ret = jffs2_do_readpage_nolock(inode, pg);
 unlock_page(pg);
 return ret;
}
