
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int page; } ;
typedef TYPE_1__ nfs_readdir_descriptor_t ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cache_page_release (TYPE_1__*) ;
 int get_cache_page (TYPE_1__*) ;
 int nfs_readdir_search_array (TYPE_1__*) ;

__attribute__((used)) static
int find_cache_page(nfs_readdir_descriptor_t *desc)
{
 int res;

 desc->page = get_cache_page(desc);
 if (IS_ERR(desc->page))
  return PTR_ERR(desc->page);

 res = nfs_readdir_search_array(desc);
 if (res != 0)
  cache_page_release(desc);
 return res;
}
