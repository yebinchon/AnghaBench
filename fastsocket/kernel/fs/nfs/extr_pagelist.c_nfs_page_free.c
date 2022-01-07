
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int dummy; } ;


 int kmem_cache_free (int ,struct nfs_page*) ;
 int nfs_page_cachep ;

__attribute__((used)) static inline void
nfs_page_free(struct nfs_page *p)
{
 kmem_cache_free(nfs_page_cachep, p);
}
