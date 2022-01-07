
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_page_frag {int * f_page; } ;


 int __free_page (int *) ;
 int rdsdebug (char*,struct rds_page_frag*,int *) ;

__attribute__((used)) static void rds_iw_frag_drop_page(struct rds_page_frag *frag)
{
 rdsdebug("frag %p page %p\n", frag, frag->f_page);
 __free_page(frag->f_page);
 frag->f_page = ((void*)0);
}
