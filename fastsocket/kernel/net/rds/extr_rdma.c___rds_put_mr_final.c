
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_mr {int dummy; } ;


 int kfree (struct rds_mr*) ;
 int rds_destroy_mr (struct rds_mr*) ;

void __rds_put_mr_final(struct rds_mr *mr)
{
 rds_destroy_mr(mr);
 kfree(mr);
}
