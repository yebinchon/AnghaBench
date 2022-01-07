
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_hashbucket {int dummy; } ;
struct sctp_bind_hashbucket {int dummy; } ;


 int cleanup_sctp_mibs () ;
 int free_pages (unsigned long,int ) ;
 int get_order (int) ;
 int inet_ctl_sock_destroy (int ) ;
 int kfree (int ) ;
 int kmem_cache_destroy (int ) ;
 int rcu_barrier () ;
 int sctp_assoc_hashsize ;
 scalar_t__ sctp_assoc_hashtable ;
 int sctp_bucket_cachep ;
 int sctp_chunk_cachep ;
 int sctp_ctl_sock ;
 int sctp_dbg_objcnt_exit () ;
 int sctp_ep_hashtable ;
 int sctp_free_local_addr_list () ;
 int sctp_port_hashsize ;
 scalar_t__ sctp_port_hashtable ;
 int sctp_proc_exit () ;
 int sctp_sysctl_unregister () ;
 int sctp_v4_del_protocol () ;
 int sctp_v4_pf_exit () ;
 int sctp_v4_protosw_exit () ;
 int sctp_v6_del_protocol () ;
 int sctp_v6_pf_exit () ;
 int sctp_v6_protosw_exit () ;

void sctp_exit(void)
{





 sctp_v6_del_protocol();
 sctp_v4_del_protocol();


 inet_ctl_sock_destroy(sctp_ctl_sock);


 sctp_v6_protosw_exit();
 sctp_v4_protosw_exit();


 sctp_free_local_addr_list();


 sctp_v6_pf_exit();
 sctp_v4_pf_exit();

 sctp_sysctl_unregister();

 free_pages((unsigned long)sctp_assoc_hashtable,
     get_order(sctp_assoc_hashsize *
        sizeof(struct sctp_hashbucket)));
 kfree(sctp_ep_hashtable);
 free_pages((unsigned long)sctp_port_hashtable,
     get_order(sctp_port_hashsize *
        sizeof(struct sctp_bind_hashbucket)));

 sctp_dbg_objcnt_exit();
 sctp_proc_exit();
 cleanup_sctp_mibs();

 rcu_barrier();

 kmem_cache_destroy(sctp_chunk_cachep);
 kmem_cache_destroy(sctp_bucket_cachep);
}
