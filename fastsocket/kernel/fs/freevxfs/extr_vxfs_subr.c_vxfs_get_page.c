
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;


 int EIO ;
 struct page* ERR_PTR (int ) ;
 int IS_ERR (struct page*) ;
 scalar_t__ PageError (struct page*) ;
 int kmap (struct page*) ;
 struct page* read_mapping_page (struct address_space*,int ,int *) ;
 int vxfs_put_page (struct page*) ;

struct page *
vxfs_get_page(struct address_space *mapping, u_long n)
{
 struct page * pp;

 pp = read_mapping_page(mapping, n, ((void*)0));

 if (!IS_ERR(pp)) {
  kmap(pp);


  if (PageError(pp))
   goto fail;
 }

 return (pp);

fail:
 vxfs_put_page(pp);
 return ERR_PTR(-EIO);
}
