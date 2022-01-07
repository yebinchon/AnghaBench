
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn {int timeout; int flags; int n_control; int refcnt; int * app; int pe_data; int pe; scalar_t__ control; int timer; } ;


 int HZ ;
 int IP_VS_CONN_F_NO_CPORT ;
 int IP_VS_CONN_F_ONE_PACKET ;
 int IP_VS_DBG (int,char*,int,int) ;
 int IP_VS_STATE_MASTER ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int del_timer (int *) ;
 int ip_vs_conn_cachep ;
 int ip_vs_conn_count ;
 int ip_vs_conn_hash (struct ip_vs_conn*) ;
 int ip_vs_conn_no_cport_cnt ;
 int ip_vs_conn_put (struct ip_vs_conn*) ;
 int ip_vs_conn_unhash (struct ip_vs_conn*) ;
 int ip_vs_control_del (struct ip_vs_conn*) ;
 int ip_vs_pe_put (int ) ;
 int ip_vs_sync_conn (struct ip_vs_conn*,int ) ;
 int ip_vs_sync_state ;
 int ip_vs_unbind_app (struct ip_vs_conn*) ;
 int ip_vs_unbind_dest (struct ip_vs_conn*) ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct ip_vs_conn*) ;
 scalar_t__ likely (int) ;
 int sysctl_sync_threshold () ;
 scalar_t__ timer_pending (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void ip_vs_conn_expire(unsigned long data)
{
 struct ip_vs_conn *cp = (struct ip_vs_conn *)data;

 cp->timeout = 60*HZ;




 atomic_inc(&cp->refcnt);




 if (atomic_read(&cp->n_control))
  goto expire_later;




 if (!ip_vs_conn_unhash(cp) && !(cp->flags & IP_VS_CONN_F_ONE_PACKET))
  goto expire_later;




 if (likely(atomic_read(&cp->refcnt) == 1)) {

  if (timer_pending(&cp->timer))
   del_timer(&cp->timer);


  if (cp->control)
   ip_vs_control_del(cp);





  ip_vs_pe_put(cp->pe);
  kfree(cp->pe_data);
  if (unlikely(cp->app != ((void*)0)))
   ip_vs_unbind_app(cp);
  ip_vs_unbind_dest(cp);
  if (cp->flags & IP_VS_CONN_F_NO_CPORT)
   atomic_dec(&ip_vs_conn_no_cport_cnt);
  atomic_dec(&ip_vs_conn_count);

  kmem_cache_free(ip_vs_conn_cachep, cp);
  return;
 }


 ip_vs_conn_hash(cp);

  expire_later:
 IP_VS_DBG(7, "delayed: conn->refcnt-1=%d conn->n_control=%d\n",
    atomic_read(&cp->refcnt)-1,
    atomic_read(&cp->n_control));

 if (ip_vs_sync_state & IP_VS_STATE_MASTER)
  ip_vs_sync_conn(cp, sysctl_sync_threshold());

 ip_vs_conn_put(cp);
}
