
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_page_frag {int f_page; } ;


 int BUG_ON (int ) ;
 int kmem_cache_free (int ,struct rds_page_frag*) ;
 int rds_iw_frag_slab ;
 int rdsdebug (char*,struct rds_page_frag*,int ) ;

__attribute__((used)) static void rds_iw_frag_free(struct rds_page_frag *frag)
{
 rdsdebug("frag %p page %p\n", frag, frag->f_page);
 BUG_ON(frag->f_page);
 kmem_cache_free(rds_iw_frag_slab, frag);
}
