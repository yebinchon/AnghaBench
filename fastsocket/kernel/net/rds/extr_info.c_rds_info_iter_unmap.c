
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_info_iterator {int * addr; } ;


 int KM_USER0 ;
 int kunmap_atomic (int *,int ) ;

void rds_info_iter_unmap(struct rds_info_iterator *iter)
{
 if (iter->addr) {
  kunmap_atomic(iter->addr, KM_USER0);
  iter->addr = ((void*)0);
 }
}
