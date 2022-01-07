
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn {int flags; int lock; int refcnt; int c_list; } ;


 int IP_VS_CONN_F_HASHED ;
 int atomic_dec (int *) ;
 int ct_write_lock (unsigned int) ;
 int ct_write_unlock (unsigned int) ;
 unsigned int ip_vs_conn_hashkey_conn (struct ip_vs_conn*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline int ip_vs_conn_unhash(struct ip_vs_conn *cp)
{
 unsigned hash;
 int ret;


 hash = ip_vs_conn_hashkey_conn(cp);

 ct_write_lock(hash);
 spin_lock(&cp->lock);

 if (cp->flags & IP_VS_CONN_F_HASHED) {
  list_del(&cp->c_list);
  cp->flags &= ~IP_VS_CONN_F_HASHED;
  atomic_dec(&cp->refcnt);
  ret = 1;
 } else
  ret = 0;

 spin_unlock(&cp->lock);
 ct_write_unlock(hash);

 return ret;
}
