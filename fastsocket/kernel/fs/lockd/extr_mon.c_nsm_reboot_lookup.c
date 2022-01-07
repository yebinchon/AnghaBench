
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsm_handle {int sm_count; int sm_addrbuf; int sm_name; scalar_t__ sm_monitored; } ;
struct nlm_reboot {int mon; int len; int priv; } ;


 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int dprintk (char*,int ,int ,...) ;
 int nsm_lock ;
 struct nsm_handle* nsm_lookup_priv (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

struct nsm_handle *nsm_reboot_lookup(const struct nlm_reboot *info)
{
 struct nsm_handle *cached;

 spin_lock(&nsm_lock);

 cached = nsm_lookup_priv(&info->priv);
 if (unlikely(cached == ((void*)0))) {
  spin_unlock(&nsm_lock);
  dprintk("lockd: never saw rebooted peer '%.*s' before\n",
    info->len, info->mon);
  return cached;
 }

 atomic_inc(&cached->sm_count);
 spin_unlock(&nsm_lock);





 cached->sm_monitored = 0;

 dprintk("lockd: host %s (%s) rebooted, cnt %d\n",
   cached->sm_name, cached->sm_addrbuf,
   atomic_read(&cached->sm_count));
 return cached;
}
