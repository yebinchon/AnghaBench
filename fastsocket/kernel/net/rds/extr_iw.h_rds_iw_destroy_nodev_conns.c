
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __rds_iw_destroy_conns (int *,int *) ;
 int iw_nodev_conns ;
 int iw_nodev_conns_lock ;

__attribute__((used)) static inline void rds_iw_destroy_nodev_conns(void)
{
 __rds_iw_destroy_conns(&iw_nodev_conns, &iw_nodev_conns_lock);
}
