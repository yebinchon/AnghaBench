
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_tcp_incoming {int dummy; } ;


 int ENOMEM ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int rds_tcp_incoming_slab ;

int rds_tcp_recv_init(void)
{
 rds_tcp_incoming_slab = kmem_cache_create("rds_tcp_incoming",
     sizeof(struct rds_tcp_incoming),
     0, 0, ((void*)0));
 if (!rds_tcp_incoming_slab)
  return -ENOMEM;
 return 0;
}
