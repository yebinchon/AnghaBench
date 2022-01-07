
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_iw_mr_pool {int max_pages; int max_items; } ;
struct rds_iw_device {struct rds_iw_mr_pool* mr_pool; } ;
struct rds_info_rdma_connection {int rdma_mr_size; int rdma_mr_max; } ;



void rds_iw_get_mr_info(struct rds_iw_device *rds_iwdev, struct rds_info_rdma_connection *iinfo)
{
 struct rds_iw_mr_pool *pool = rds_iwdev->mr_pool;

 iinfo->rdma_mr_max = pool->max_items;
 iinfo->rdma_mr_size = pool->max_pages;
}
