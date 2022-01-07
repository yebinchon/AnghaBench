
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int kunmap (struct page*) ;

__attribute__((used)) static
void nfs_readdir_release_array(struct page *page)
{
 kunmap(page);
}
