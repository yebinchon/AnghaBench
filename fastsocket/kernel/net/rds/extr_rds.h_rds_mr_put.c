
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_mr {int r_refcount; } ;


 int __rds_put_mr_final (struct rds_mr*) ;
 scalar_t__ atomic_dec_and_test (int *) ;

__attribute__((used)) static inline void rds_mr_put(struct rds_mr *mr)
{
 if (atomic_dec_and_test(&mr->r_refcount))
  __rds_put_mr_final(mr);
}
