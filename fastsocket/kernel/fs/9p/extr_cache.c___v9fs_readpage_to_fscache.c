
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_cookie {int fscache; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;


 int GFP_KERNEL ;
 int P9_DEBUG_FSC ;
 int P9_DPRINTK (int ,char*,int,...) ;
 int fscache_write_page (int ,struct page*,int ) ;
 struct v9fs_cookie* v9fs_inode2cookie (struct inode*) ;
 int v9fs_uncache_page (struct inode*,struct page*) ;

void __v9fs_readpage_to_fscache(struct inode *inode, struct page *page)
{
 int ret;
 const struct v9fs_cookie *vcookie = v9fs_inode2cookie(inode);

 P9_DPRINTK(P9_DEBUG_FSC, "inode %p page %p", inode, page);
 ret = fscache_write_page(vcookie->fscache, page, GFP_KERNEL);
 P9_DPRINTK(P9_DEBUG_FSC, "ret =  %d", ret);
 if (ret != 0)
  v9fs_uncache_page(inode, page);
}
