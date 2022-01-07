
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_iw_device {int spinlock; int conn_list; } ;


 int __rds_iw_destroy_conns (int *,int *) ;

__attribute__((used)) static inline void rds_iw_destroy_conns(struct rds_iw_device *rds_iwdev)
{
 __rds_iw_destroy_conns(&rds_iwdev->conn_list, &rds_iwdev->spinlock);
}
