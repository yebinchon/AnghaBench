
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtx_constant_pool {scalar_t__ offset; int * last; int * first; int const_rtx_htab; } ;


 int const_desc_rtx_eq ;
 int const_desc_rtx_hash ;
 struct rtx_constant_pool* ggc_alloc (int) ;
 int htab_create_ggc (int,int ,int ,int *) ;

__attribute__((used)) static struct rtx_constant_pool *
create_constant_pool (void)
{
  struct rtx_constant_pool *pool;

  pool = ggc_alloc (sizeof (struct rtx_constant_pool));
  pool->const_rtx_htab = htab_create_ggc (31, const_desc_rtx_hash,
       const_desc_rtx_eq, ((void*)0));
  pool->first = ((void*)0);
  pool->last = ((void*)0);
  pool->offset = 0;
  return pool;
}
