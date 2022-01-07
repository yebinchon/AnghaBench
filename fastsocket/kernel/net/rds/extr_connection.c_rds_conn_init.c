
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int dummy; } ;


 int ENOMEM ;
 int RDS_INFO_CONNECTIONS ;
 int RDS_INFO_RETRANS_MESSAGES ;
 int RDS_INFO_SEND_MESSAGES ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int rds_conn_info ;
 int rds_conn_message_info_retrans ;
 int rds_conn_message_info_send ;
 int rds_conn_slab ;
 int rds_info_register_func (int ,int ) ;

int rds_conn_init(void)
{
 rds_conn_slab = kmem_cache_create("rds_connection",
       sizeof(struct rds_connection),
       0, 0, ((void*)0));
 if (!rds_conn_slab)
  return -ENOMEM;

 rds_info_register_func(RDS_INFO_CONNECTIONS, rds_conn_info);
 rds_info_register_func(RDS_INFO_SEND_MESSAGES,
          rds_conn_message_info_send);
 rds_info_register_func(RDS_INFO_RETRANS_MESSAGES,
          rds_conn_message_info_retrans);

 return 0;
}
