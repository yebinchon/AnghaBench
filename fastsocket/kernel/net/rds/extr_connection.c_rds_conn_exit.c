
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDS_INFO_CONNECTIONS ;
 int RDS_INFO_RETRANS_MESSAGES ;
 int RDS_INFO_SEND_MESSAGES ;
 int WARN_ON (int) ;
 int hlist_empty (int ) ;
 int kmem_cache_destroy (int ) ;
 int rds_conn_hash ;
 int rds_conn_info ;
 int rds_conn_message_info_retrans ;
 int rds_conn_message_info_send ;
 int rds_conn_slab ;
 int rds_info_deregister_func (int ,int ) ;
 int rds_loop_exit () ;

void rds_conn_exit(void)
{
 rds_loop_exit();

 WARN_ON(!hlist_empty(rds_conn_hash));

 kmem_cache_destroy(rds_conn_slab);

 rds_info_deregister_func(RDS_INFO_CONNECTIONS, rds_conn_info);
 rds_info_deregister_func(RDS_INFO_SEND_MESSAGES,
     rds_conn_message_info_send);
 rds_info_deregister_func(RDS_INFO_RETRANS_MESSAGES,
     rds_conn_message_info_retrans);
}
